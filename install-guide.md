## Install Guide


- Partition the installation disk using 'cfdisk' 
  - Run `cfdisk -z /dev/sdx` (x is the disk name)
  - Create partition for boot (fat32), system and home (ext4)

- Format partitions
  - `mkfs.fat -F32 /dev/sda1` - for boot device
  - `mkfs.ext4 /dev/sda2` - for system device
  - `mkfs.ext4 /dev/sda3` - for home device

- Install using `archinstall` command
- Reboot

<br/>

### After reboot
- Run `packages` file
- Configure lang on `/etc/locale.gen`
  - Remove all uncommented lines
  - Add `pt_BR.UTF-8 UTF-8` on last line
  - Save file and run `locale-gen`
- Configure lang var on `/etc/locale.conf`
  - Add LANG var to `LANG=pt_BR.UTF-8`
- Configure keyboard layout on `/etc/vconsole.conf`
  - Add variables `KEYMAP=us-acentos` and `LAYOUT=us-intl`
  - Save file and reboot

<br />

### After configure
- Login as root in gdm
- Add new user on gnome control center
- Logout and login with new user
- Run after-install script