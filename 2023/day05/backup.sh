#!/bin/bash

backup_dir="/tmp/"

echo -n "Enter a custom backup filename (without extension): "
read custom_filename

backup_filename="$custom_filename_$(date +\%Y\%m\%d_\%H\%M\%S).tar.gz"

sudo tar -czvf "$backup_dir/$backup_filename" -C $backup_filename .

echo "Backup completed: $backup_filename"
