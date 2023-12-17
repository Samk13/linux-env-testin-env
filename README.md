
# Boilerplate for linux testing

Start the Linux environment for testing by executing `make run`, and feel free to delete it once you're finished. 😊

## Make default shell

```bash
# check active user:
whoami

# change current user password
sudo passwd $(whoami)

# set your bash
sudo chsh -s /usr/bin/fish $(whoami)

# login as user samk13
su - samk13
```
