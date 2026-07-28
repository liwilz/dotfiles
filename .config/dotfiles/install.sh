if command -v pacman &>/dev/null; then
  echo "Installing official Arch packages..."
  sudo pacman -S --needed --noconfirm - <"$HOME/.config/pkglist-official.txt"

  # Bootstrap paru if it's missing
  if ! command -v paru &>/dev/null; then
    echo "Installing paru..."
    sudo pacman -S --needed --noconfirm base-devel git

    # Clone paru-bin for instant setup without heavy compiling
    git clone https://aur.archlinux.org/paru-bin.git /tmp/paru-bin
    (cd /tmp/paru-bin && makepkg -si --noconfirm)
    rm -rf /tmp/paru-bin
  fi

  echo "Installing AUR packages via paru..."
  paru -S --needed --noconfirm - <"$HOME/.config/pkglist-aur.txt"
fi
