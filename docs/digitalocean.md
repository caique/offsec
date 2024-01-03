# Digital Ocean

## Droplet Initial Script

The following steps are required to setup a Digital Ocean droplet to support using these
scripts.

- Create a new user
```
adduser --gecos "" USERNAME
usermod -aG sudo USERNAME
```

- Update apt indexes
```
sudo apt-get update -y
```

- Login as the new user
```
su USERNAME
```

- Install Nix
```
sh <(curl -L https://nixos.org/nix/install) --daemon
```
