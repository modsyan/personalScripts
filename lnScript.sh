#!/bin/bash

# to link this scrip in your own binaries folder
# run this script in the same scripts files

bin_path='/usr/local/bin/'
scripts=$(ls)
# to avoiding some linking issuse
# use full-path during linking process
cur_dir_path=$(ls | grep .sh)


for i in ${scripts}; do
  if [ $i != "lnScript.sh" ]; then
  # sudo chmod u+x "${i}"
  # sudo ln -s "${cur_dir_path=$(ls)+i}" ${bin_path};
  echo "sudo ln -s \"${cur_dir_path=$(ls)+i}\" ${bin_path};"
  echo "sudo chmod u+x \"${i}\""
  fi
done

