#!/bin/bash

case `uname -s` in
"Linux")
    platform="linux"
    ;;
*)
    platform="windows"
    ;;
esac
echo "Installing on ${platform}..."

basepath=$(cd `dirname $0`; pwd)

cd ~
if [ $platform == "linux" ]
then
    ln -sfn $basepath .vim
else
    ln -sfn $basepath vimfiles
fi
ln -sfn $basepath'/vimrcs/vimrc' .vimrc

if [ $? == 0 ]
then
    echo "Installed successfully!"
else
    echo "Failed to install!"
fi
