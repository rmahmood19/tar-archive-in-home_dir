#!/bin/bash
#Author: Reaz Mahmood
#Web : rmahmood.tech
# This is an interactive tar program which will create a archived file in user's home directory

read -p "Please enter compression type: t for tar , z for gzip or j for bzip2 " compress_type
read -p "Please provide source files: (path) " source_file
read -p "What wil be the archive file called: " file_name
if [ $compress_type = "t" ] ; then
        tar_opt="-cvf $HOME/$file_name.tar"
elif [ $compress_type = "z" ] ; then
        tar_opt="-czvf $HOME/$file_name.tar.gz"
elif [ $compress_type = "j" ] ; then
        tar_opt="-cjvf $HOME/$file_name.tar.bz2"
else
        echo "Please enter a valid compression type"
fi
tar $tar_opt $source_file && 2>&1
exit 0

