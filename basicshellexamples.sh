#!/bin/zsh
echo "list all the files"
ls -lrth

echo "create first folder"
mkdir "first_folder"

echo "create second folder"
mkdir "second_folder"

echo "log into first folder"
cd first_folder

echo "create a file in first folder"
touch newfileinfirstfolder.txt

echo "append text in the existing file"
echo "this text goes in this file" >> newfileinfirstfolder.txt

echo "now list the files again"
ls -lrth

echo "go back a level"
cd .. || exit # || exit if fails

echo "current path"
pwd

# function to create a file in second folder
function firstShellFunction() {
  echo "current path"
  pwd
  echo "executing now"
  cd second_folder
  echo "current path"
  pwd
  touch newfileinsecondfolder.txt
  echo "this text goes in this file" >> newfileinsecondfolder.txt
  ls -lrth
  echo "execution completed"
  echo "current path"
  pwd

  cd .. || exit # || exit if fails
}

echo "invoke function within this shell file"
firstShellFunction
echo "current path"
pwd

echo "invoke a function in another shell"
source ./create_third_folder.sh
secondShellFunction
pwd