
pushd ~
mkdir .bash-cmds

pushd .bash-cmds

repos=(
    https://github.com/fcambus/ansiweather.git
    https://github.com/vigneshwaranr/bd.git
    https://github.com/magicmonty/bash-git-prompt.git
    https://github.com/shyiko/commacd.git
)

for repo in "${repos[@]}"
do
    git clone $repo --depth 1
done

popd

mkdir "$HOME/bin"

ln -sfv "$HOME/.bash-cmds/bd/bd" "$HOME/bin/bd"
ln -sfv "$HOME/.bash-cmds/ansiweather/ansiweather" "$HOME/bin/ansiweather"