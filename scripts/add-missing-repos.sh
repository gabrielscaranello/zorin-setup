#! /bin/bash

PWD=$(pwd)

_add_docker_repo() {
  echo "Adding Docker repo..."
  echo "Removing old files if exists..."
  sudo rm -rf /etc/apt/keyrings/docker.gpg /etc/apt/sources.list.d/docker.list

  echo "Adding Docker repo..."
  sudo install -m 0755 -d /etc/apt/keyrings
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
  sudo chmod a+r /etc/apt/keyrings/docker.gpg
  echo "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu jammy stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null

  echo "Docker repo added."
}

_add_firefox_repo() {
  echo "Adding Firefox repo..."
  echo "Removing old files if exists..."
  sudo rm -rf /etc/apt/keyrings/packages.mozilla.org.asc /etc/apt/sources.list.d/mozilla.list /etc/apt/sources.list.d/mozilla.list

  echo "Adding firefox repo..."
  wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc >/dev/null
  echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list >/dev/null

  echo "Add firefox repo priority"
  echo '
Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1000
' | sudo tee /etc/apt/preferences.d/mozilla >/dev/null

  echo "Firefox repo added."
}

_add_papirus_repo() {
  echo "Adding Papirus repo..."
  echo "Removing old files if exists..."
  sudo add-apt-repository -r -y ppa:papirus/papirus

  echo "Adding Papirus repo..."
  sudo add-apt-repository -y ppa:papirus/papirus

  echo "Papirus repo added."
}

_add_spotify_repo() {
  echo "Adding Spotify repo..."
  echo "Removing old files if exists..."
  sudo rm -rf /etc/apt/trusted.gpg.d/spotify.gpg /etc/apt/sources.list.d/spotify.list

  echo "Adding Spotify repo..."
  curl -sS https://download.spotify.com/debian/pubkey_C85668DF69375001.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
  echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

  echo "Spotify repo added."
}

_add_vscode_repo() {
  echo "Adding VSCode repo..."
  echo "Removing old files if exists..."
  sudo rm -rf /etc/apt/sources.list.d/vscode.list /etc/apt/keyrings/packages.microsoft.gpg

  echo "Adding VSCode repo..."
  wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >packages.microsoft.gpg
  sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
  sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
  rm -f packages.microsoft.gpg
  echo "VSCode repo added."
}

echo "Adding missing deb repos..."
_add_docker_repo
_add_papirus_repo
_add_spotify_repo
_add_vscode_repo
sudo apt update
echo "Missing deb repos added."
