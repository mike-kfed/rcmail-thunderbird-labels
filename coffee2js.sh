#!/bin/bash

if [ ! -d node_modules/jquery ]
then
	echo "to build you must run:"
	echo "$ npm install jquery"
	echo "and maybe more modules, errors of coffeescript compiler will let you know ;)"
	exit 1
fi

cat coffeescripts/main.coffee coffeescripts/css.coffee coffeescripts/functions.coffee coffeescripts/menu.coffee | \
	coffee --compile --stdio -b -p |grep -v require\( > tb_label.js
# no longer needed
#cat coffeescripts/contextmenu.coffee | \
#	coffee --compile --stdio -b -p |grep -v require\( > tb_label_contextmenu.js

