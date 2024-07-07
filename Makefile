all:
	@sh ./scripts/all.sh

add-missing-repos:
	@sh ./scripts/add-missing-repos.sh

copy-desktop-config:
	@sh ./scripts/copy-desktop-config.sh

copy-timeshift-config:
	@sh ./scripts/copy-timeshift-config.sh

enable-services:
	@sh ./scripts/enable-services.sh

hide-desktop-apps:
	@sh ./scripts/hide-desktop-apps.sh

install-bottom:
	@sh ./scripts/install-bottom.sh

install-dbeaver:
	@sh ./scripts/install-dbeaver.sh

install-discord:
	@sh ./scripts/install-discord.sh

install-firefox:
	@sh ./scripts/install-firefox.sh

install-gitflow-cjs:
	@sh ./scripts/install-gitflow-cjs.sh

install-gnome-extensions:
	@sh ./scripts/install-gnome-extensions.sh

install-go:
	@sh ./scripts/install-go.sh

install-google-chrome:
	@sh ./scripts/install-google-chrome.sh

install-lazydocker:
	@sh ./scripts/install-lazydocker.sh

install-lazygit:
	@sh ./scripts/install-lazygit.sh

install-jetbrains-mono:
	@sh ./scripts/install-jetbrains-mono.sh

install-neovim:
	@sh ./scripts/install-neovim.sh

install-nvm:
	@sh ./scripts/install-nvm.sh

install-obsidian:
	@sh ./scripts/install-obsidian.sh

install-system-packages:
	@sh ./scripts/install-system-packages.sh

install-telegram:
	@sh ./scripts/install-telegram.sh

remove-unused-packages:
	@sh ./scripts/remove-unused-packages.sh

remove-xterm:
	@sh ./scripts/remove-xterm.sh

setup-cursor-theme:
	@sh ./scripts/setup-cursor-theme.sh

setup-default-apps:
	@sh ./scripts/setup-default-apps.sh

setup-gtk-theme:
	@sh ./scripts/setup-gtk-theme.sh

setup-icon-theme:
	@sh ./scripts/setup-icon-theme.sh

setup-look:
	@sh ./scripts/setup-look.sh

setup-swap:
	@sh ./scripts/setup-swap.sh

setup-wallpaper:
	@sh ./scripts/setup-wallpaper.sh

usermod:
	@sh ./scripts/usermod.sh

