#!/bin/bash

while getopts 'lha:' OPTION; do 
    case "$OPTION" in
      l)
        echo "linuxconfig"
        ;;
      h)
        echo "you have supplied the -h option"
        ;;
      a)
        avalue="$OPTARG"
        echo "the valur provided is $OPTARG"
        ;;
      ?)
        echo "script usaage: $(basename \ $0) [-l] [-h] [-a somevalue]" >&2
        exit 1
        ;;
    esac
  done
  shift "$(($OPTIND - 1))"
