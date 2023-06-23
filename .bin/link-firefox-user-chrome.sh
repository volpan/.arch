#!/usr/bin/env bash

FIREFOX_PROFILE_FOLDER="$1"

if [ -z ${FIREFOX_PROFILE_FOLDER+x} ]; then
	echo "Usage: link-firefox-userchrome.sh FIREFOX_PROFILE_FOLDER"
else
	REAL_FIREFOX_CHROME_FOLDER=~/.config/firefox-chrome
	FIREFOX_CHROME_FOLDER=${FIREFOX_PROFILE_FOLDER}/chrome
	ln -sf $REAL_FIREFOX_CHROME_FOLDER $FIREFOX_CHROME_FOLDER
fi