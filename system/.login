
exists() {
    hash $1 2>/dev/null;
}

if exists figlet; then
    figlet -f slant $(hostname)
fi


if exists ansiweather; then
    ansiweather -l tucson,us -u imperial
    echo -ne "\n"
fi
