#!/bin/bash
REPO_DIR=${PWD}
REPOS=`tr '\n' ' ' < vim-plugins.txt`
pushd ${HOME}

mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle;

echo "installing or updating plugins"
for i in ${REPOS}; do
name=`echo $i|rev|cut -d"/" -f1 |rev|sed 's/\.git//g'`
dir=${HOME}/.vim/bundle/${name} 
if [ ! -d $dir ]; then
git clone ${i} ${dir} 
else
echo -n "${name}: "
git -C $dir pull
fi
done

echo "creating symlinks"
if [ -f .vimrc ]; then
cp .vimrc .vimrc.sav
fi
ln -s ${REPO_DIR}/vimrc .vimrc

if [ -f .bashrc ]; then
cp .bashrc .bashrc.sav
fi
ln -s ${REPO_DIR}/bashrc .bashrc

echo "Done"
