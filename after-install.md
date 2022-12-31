# After Install Arch Linux

## Install paru to be AUR helper
Run `./after-install/paru.sh` to install paru

## Install flatpak apps
Run `./after-install/flatpak.sh` to install the flatpk apps

## Setup theme and icons
Run `./after-install/look.sh` to setup look
Use [User Themes Extension](https://extensions.gnome.org/extension/19/user-themes/) to set themes and icons if needed

## Remove unused app launch
Run `./after-install/clean-apps.sh` to remove apps from gnome application menu

## Setup nvm
Run `./after-install/nvm.sh` to install nvm, yarn and global dependencies

## Setup oh-my-zsh
```sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

After install oh-my-zsh run `./after-install/profile.sh`

## Setup docker
Run `./after-install/docker.sh` to setup docker config

## Setup default apps
Run `./after-install/default-apps.sh` to setup default apps

## Remove unused packages

Clean cache and unused packages

```sh
paru -Sccd && paru -Rsn $(paru -Qqdt)
```

> More desktop config and infos on [My Dotfiles Repository](https://github.com/gabrielscaranello/dotfiles).