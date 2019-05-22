#!/bin/sh

if [ -z $1 ]
then
	echo "Enter package name and version"
	echo "Ex: sample 1.0.0.0"
	exit 1
fi

mkdir -p Debian/$1-$2

cd Debian/$1-$2

dh_make \
  --native \
  --single \
  --packagename $1-$2 \
  --email sample@mail.com

dpkg-buildpackage



