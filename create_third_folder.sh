# function to create a file in second folder
function secondShellFunction() {
  pwd
  echo "executing now"
  mkdir third_folder
  cd third_folder
  pwd
  touch newfileinthirdfolder.txt
  echo "this text goes in this file" >> newfileinthirdfolder.txt
  ls -lrth
  echo "executing completed"
  pwd

  cd .. || exit # || exit if fails
}