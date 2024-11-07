#! /bin/bash

backup_dir="backup_$(date +%Y%m%d)"
cp -R ./ $backup_dir
echo "Backup created in $backup_dir"

