#!/usr/bin/env bash
# I have mounted a WebDav file system holding my website at /mnt/webdav.
# This script simply copies the files to here

git checkout main
stack build
stack exec site clean
stack exec site build

# Going to the website file system makes sure that it is mounted
cd /mnt/webdav/website/
cp -r $HOME/src/my_website/_site/* .
