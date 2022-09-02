#!/bin/bash

# make files excutable and link this scrips in your own binaries folder
# run this script in the same scripts files

bin_path="/usr/local/bin/"
scripts="$(ls src)"
# to avoiding some linking issuse
# use full-path during linking process
cur_dir_path="$(pwd)/src/"

for i in ${scripts}; do
  cur_file="${cur_dir_path}${i}"
  linkin_file="${bin_path}${i//[.sh]+/}"

  echo "Make $i excutable..."
  sudo chmod u+x "$cur_file"
  echo "Link $cur_file -to-> $linkin_file"
  sudo ln -s "$cur_file" "$linkin_file"
done

echo "scripts now installed on your system ;)"