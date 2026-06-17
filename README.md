# Initialize Work Environment

Set up some handy configuration files for development tools.

```sh
git clone https://github.com/crithead/workenv.git
cd workenv
ansible-playbook init-local.yml
```

Or use the script

```
./init-local.sh             # For this user
sudo ./init-local.sh bob    # For another user
sudo ./init-local.sh root   # For the root user
```
