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

    echo; sleep .1;
    sudo chmod u+x "$cur_file"
    echo "Make \"$i\" Excutable..."
    sudo ln -s "$cur_file" "$linkin_file"
    echo "Link \"$cur_file\" --> \"$linkin_file\""
    echo "Successfually."
done
echo "Scripts installed now on your System ;)"

# Error handdling 
# { #try
# } || { # catch
# link fixes
    # sudo rm /usr/local/bin/newc; sudo rm /usr/local/bin/testc;
    # echo "Error, Somthing wrong";
    # exit 1
# }

# log system


######