!/bin/bash

bin_file_path='/usr/local/bin/'

files=`ls`
for i in ${files}; do
  sudo ln -s ${i} ${bin_file_path};
done
