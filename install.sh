#!/bin/bash -x
cd `dirname $0`

mkdir -p ~/bin
ln -s `pwd`/google ~/bin/
ln -s `pwd`/urlencode ~/bin/
ln -s `pwd`/urldecode ~/bin/
ln -s `pwd`/viewmd ~/bin/

export_count=`cat ~/.bash_profile | grep 'export PATH="$HOME/bin:$PATH"' | wc -l`
echo $export_count

if [ $export_count -eq 0 ]; then
	echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bash_profile
fi
echo "installed."
echo "execute to complete installation:"
echo "source ~/.bash_profile"
