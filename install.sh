#!/bin/sh

folder=~/.freedomtxt/
filename=.freedom.txt
final=$folder$filename

if [ ! -d $folder ]
then
	mkdir $folder
fi

if [ ! -e $final ]
then
	cp freedom.txt $final
fi

sed "s|INSTALL_PATH|$final|g" ./tar > ./tar.inst
cat ./tar.inst >> ~/.bashrc
rm ./tar.inst
