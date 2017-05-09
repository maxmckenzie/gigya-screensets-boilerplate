#!/bin/bash

## Create Static Bundle Directory
if [ -d "static-bundle" ]; then
  rm -r static-bundle
  mkdir static-bundle
else
  mkdir static-bundle
fi

## Copy over files
cp index.html static-bundle/index.html
cp -r public static-bundle/

## ssh upload prompt
echo ""
echo "would you like to upload this bundle via ssh? (y/n)"
echo "note: this is only possible if you have your remote ssh keys installed on this machine"

read upload

if [ "$upload" == "y" ]; then

  # set remote server IP
  echo ""
  echo "what is the IP address of the remote server"
  read ip

  # set ssh user
  echo ""
  echo "what is your username for the server"
  read username

  # set remote directory
  echo ""
  echo "which directory on the remote server would you like to upload to? (This is relative to your user folder)"
  read directory

  echo ""
  echo "please enter the relative url including the path if necessary"
  echo "e.g http//example.com/my-path/"
  echo "important: make sure you append a foward slash at the end"
  read url

  sed -i '' 's|<base[^>]* href="[^"]*/|<base href="'$url'|g' $PWD/static-bundle/index.html

  # final check
  echo ""
  echo ""
  echo "Source: $PWD/static-bundle"
  echo "Target: $username@$ip:$directory"
  echo "Is this correct? (y/n)"
  read correct

  # upload
  if [ "$correct" == "y" ]; then
    rsync -av $PWD/static-bundle/ $username@$ip:$directory
  fi
fi
