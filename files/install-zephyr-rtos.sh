#!/bin/bash
# https://docs.zephyrproject.org/latest/develop/getting_started/index.html
# This script is intended to be copied to the VM and executed by Ansible.
# It requires dependencies to have been installed on a system that supports
# building Zephyr RTOS.

readonly WORK_DIR="${1:-/work}"
readonly LOG="${WORK_DIR}/$(basename "$0" .sh).log"

(
    set -e
    #set -x

    # Report compatibility

    readonly MIN_CMAKE_VERSION="3.20.5"
    readonly MIN_PYTHON_VERSION="3.8"
    readonly MIN_DTC_VERSION="1.4.6"

    readonly CMAKE_VERSION=$(cmake --version | head -n 1 | cut -d' ' -f3)
    readonly PYTHON_VERSION=$(python3 --version | cut -d' ' -f2)
    readonly DTC_VERSION=$(dtc --version | cut -d' ' -f3)

    echo "CMake ${CMAKE_VERSION} (${MIN_CMAKE_VERSION})"
    echo "Python ${PYTHON_VERSION} (${MIN_PYTHON_VERSION})"
    echo "Devicetree Compiler ${DTC_VERSION} (${MIN_DTC_VERSION})"

    # Get Zephyr and install Python dependencies
    python3 -m venv "${WORK_DIR}/zephyrproject/.venv"
    source "${WORK_DIR}/zephyrproject/.venv/bin/activate"
    pip install west

    west init "${WORK_DIR}/zephyrproject"
    cd "${WORK_DIR}/zephyrproject"
    west update
    west zephyr-export
    pip install -r "${WORK_DIR}/zephyrproject/zephyr/scripts/requirements.txt"

    # Install Zephyr SDK
    readonly ZEPHYR_VERSION="0.16.3"
    readonly ZEPHYR_RELEASE_URL="https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v${ZEPHYR_VERSION}"
    cd "${WORK_DIR}"
    wget ${ZEPHYR_RELEASE_URL}/zephyr-sdk-${ZEPHYR_VERSION}_linux-x86_64.tar.xz
    wget -O - ${ZEPHYR_RELEASE_URL}/sha256.sum | shasum --check --ignore-missing
    # TODO: Check output of previous command is "OK"

    tar xvf zephyr-sdk-${ZEPHYR_VERSION}_linux-x86_64.tar.xz -C ${WORK_DIR}
    cd ${WORK_DIR}/zephyr-sdk-${ZEPHYR_VERSION}
    ./setup.sh # < /usr/bin/yes
    sudo cp ${WORK_DIR}/zephyr-sdk-${ZEPHYR_VERSION}/sysroots/x86_64-pokysdk-linux/usr/share/openocd/contrib/60-openocd.rules /etc/udev/rules.d
    sudo udevadm control --reload

    # Build the Blinky Sample
    readonly TARGET_BOARD=stm32f3_disco
    cd ${WORK_DIR}/zephyrproject/zephyr
    west build -p always -b ${TARGET_BOARD} samples/basic/blinky
) 2>&1 | tee ${LOG}

echo "Log: $LOG"
exit 0
