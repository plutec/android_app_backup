#!/bin/sh
mkdir $1.ab.out
adb backup -f $1.ab.out/$1.ab $1
java -jar bin/abe.jar unpack $1.ab.out/$1.ab $1.ab.out/$1.tar
cd $1.ab.out
tar xvf $1.tar


