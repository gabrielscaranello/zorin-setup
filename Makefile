all:
	@sh ./scripts/all.sh

enable-services:
	@sh ./scripts/enable-services.sh

hide-desktop-apps:
	@sh ./scripts/hide-desktop-apps.sh

install-pacman-packages:
	@sh ./scripts/install-pacman-packages.sh

install-aur-packages:
	@sh ./scripts/install-aur-packages.sh

install-nvm:
	@sh ./scripts/install-nvm.sh

install-yay:
	@sh ./scripts/install-yay.sh

setup-nvidia-hydrid:
	@sh ./scripts/setup-nvidia-hydrid.sh

setup-swap:
	@sh ./scripts/setup-swap.sh

