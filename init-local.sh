#!/bin/bash
# Install local environment for the specified user (or current user).
readonly THIS_USER="${1:-$(whoami)}"
readonly THIS_HOME="$(eval echo ~${THIS_USER})"

echo "THIS_USER: ${THIS_USER}"
echo "THIS_HOME: ${THIS_HOME}"

if [[ ! -d "${THIS_HOME}" ]]; then
    echo "Directory not found: ${THIS_HOME}"
    exit 1
fi

mkdir -p "${THIS_HOME}/bin"
install -m 0644 files/bin-update "${THIS_HOME}/bin/update"

install -m 0644 files/dot.bash_alias "${THIS_HOME}/.bash_alias"
install -m 0644 files/dot.bash_prompt "${THIS_HOME}/.bash_prompt"
install -m 0644 files/dot.bashrc "${THIS_HOME}/.bashrc"
install -m 0644 files/dot.clang-format "${THIS_HOME}/.clang-format"
install -m 0644 files/dot.gitconfig "${THIS_HOME}/.gitconfig"
install -m 0644 files/dot.tmux.conf "${THIS_HOME}/.tmux.conf"
install -m 0644 files/dot.vim-colors-sunrise.vim "${THIS_HOME}/.vim/colors/sunrise.vim"
install -m 0644 files/dot.vim-colors-yk.vim "${THIS_HOME}/.vim/colors/yk.vim"
install -m 0644 files/dot.vimrc "${THIS_HOME}/.vimrc"

mkdir -p "${THIS_HOME}/.local/tmp"
{
    echo "export TMPDIR=\"/home/${THIS_USER}/.local/tmp\""
    echo "source ~/.bash_alias"
    echo "source ~/.bash_prompt"
} >> "${THIS_HOME}/.bashrc"

exit 0
