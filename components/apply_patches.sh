#!/bin/bash

function apply() {
	cpath=$(pwd)
	cd $2
	shopt -s globstar
	for file in $cpath/$1/*.patch
	do
		patch -p1 -i "$file"
	done
	cd $cpath
}


apply "baresip/patches" "baresip/baresip"
apply "re/patches" "re/re"
