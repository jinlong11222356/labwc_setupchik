DOTFILES_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

rm -rf "$HOME/.local/bin" && ln -s "$DOTFILES_DIR/bin" ~/.local/bin

tie(){
    rm -rf "$HOME/.config/$1" && ln -s "$DOTFILES_DIR/$1" ~/.config/$1
}

tie labwc
tie foot
tie fastfetch
tie zathura