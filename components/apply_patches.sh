#!/bin/bash


function apply() {
	cd $2
	shopt -s globstar
	for file in $1/*.patch
	do
		patch -p1 -i "$file"
	done
}

cd $(dirname $0)
spath=$(pwd)

echo "applying baresip patches ..."
apply "$spath/baresip/patches" "$spath/baresip/baresip"

echo "applying libre patches ..."
apply "$spath/re/patches" "$spath/re/re"
