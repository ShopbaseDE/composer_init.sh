#!/bin/bash
#
# Create composer.json for project
# Author: Hendrik Legge <hendrik.legge@themepoint.de> <https://github.com/ShopbaseDE>

if [ "$1" = "help" ]; then
	echo "composer_init.sh [ TYPE ] [ USER ] [ PROJECT ] [ DESCRIPTION ] [ LICENSE ]"
	exit
fi

if [ -e composer.json ]; then
	echo "Composer is already initialized for this project"
	exit
fi

if [ -z "$2" ]; then
	USER="USER"
else
	USER="$2"
fi

if [ -z "$3" ]; then
	PROJECT="PROJECT"
else
	PROJECT="$3"
fi

if [ -z "$4" ]; then
	DESCRIPTION=""
else
	DESCRIPTION="$4"
fi

if [ -z "$5" ]; then
	LICENSE="MIT"
else
	LICENSE="$5"
fi

JSON_CONTENT_PROJECT=$(cat <<EOF
{
	"name": "$USER/$PROJECT",
	"description": "$DESCRIPTION",
	"keywords": [],
	"license": "$LICENSE",
	"type": "project",
	"homepage": "",
	"authors": [
		{
			"name": "",
			"email": ""
		},
	],
	"require": {
		"php": "^7.1.3"
	},
	"autoload": {
		"classmap": [
			"Path/To/Mapped/Source"
		],
		"psr-4": {
			"Class\\\\\\": "Path/To/Mapped/Source"
		},
		"minimum-stability": "dev"
	},
	"config": {
		"sort-packages": true,
		"optimize-autoloader": true
	}
}
EOF)

JSON_CONTENT_LIBRARY=$(cat <<EOF
{
	"name": "$USER/$PROJECT",
	"description": "$DESCRIPTION",
	"keywords": [],
	"license": "$LICENSE",
	"type": "library",
	"homepage": "",
	"authors": [
		{
			"name": "",
			"email": ""
		},
	],
	"require": {
		"php": "^7.1.3"
	},
	"autoload": {
		"psr-4": {
			"Class\\\\\\": "Path/To/Mapped/Source"
		},
		"minimum-stability": "dev"
	}
}
EOF)

if [ "$1" = "lib" ]; then
	echo "$JSON_CONTENT_LIBRARY" > 'composer.json'
else
	echo "$JSON_CONTENT_PROJECT" > 'composer.json'
fi
