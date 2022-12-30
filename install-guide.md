# Install Guide

In this installation I will use the installation script `archinstall`

## How to Install

### Prerequisites
- Arch Linux ISO downloaded
- An bootable device with Arch Linux

### First step (archinstall)
- After iso boot run `archinstall` to execure installation
- Follow all steps and select your options (I recommend doing the minimal installation and not adding a user in this step)
- Finally, select the `install` option
- Wait installation and reboot after then

#### Possible problems

- archinstall keyring error
  > How to fix
  >
  >```sh
  > killall gpg-agent
  > pacman-key --init
  > pacman-key --populate archlinux
  >```

- lsblk: /dev/X: not a block device
  > How to fix
  >
  >```sh
  > find /usr/lib/python3.10/site-packages/archinstall/ -type f -exec sed -i "s/lsblk --json/lsblk -a -e 8 --json/g" {} \;
  >```

### Second step (install packages)

> Following packages is from desktop installation with `gdm` and `gnome`
>
> Then enable needed services

- Login in the root account
- run `./packages` script
- reboot


In the next boot, a gnome guided graphical interface will be presented for creating your user.

To have sudo access you will need to add this user in `/etc/sudoers`