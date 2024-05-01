all:
	@sh ./scripts/all.sh

copy-plasma-config:
	@sh ./scripts/copy-plasma-config.sh

copy-sddm-config:
	@sh ./scripts/copy-sddm-config.sh

enable-services:
	@sh ./scripts/enable-services.sh

hide-desktop-apps:
	@sh ./scripts/hide-desktop-apps.sh

install-pacman-packages:
	@sh ./scripts/install-pacman-packages.sh

install-aur-packages:
	@sh ./scripts/install-aur-packages.sh

install-bibata-cursor:
	@sh ./scripts/install-bibata-cursor.sh

install-nvm:
	@sh ./scripts/install-nvm.sh

install-yay:
	@sh ./scripts/install-yay.sh

setup-nvidia-hydrid:
	@sh ./scripts/setup-nvidia-hydrid.sh

setup-swap:
	@sh ./scripts/setup-swap.sh

usermod:
	@sh ./scripts/usermod.sh


