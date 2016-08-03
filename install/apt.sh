
packages=(
    jq
    lnav
    emacs
    yaml-mode
)

if [ "$(uname -s)" = "Linux" ]; then
    sudo apt-get install "${packages[@]}"
fi