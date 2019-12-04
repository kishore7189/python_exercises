echo "`date` Begining to sync dest_dir" >> /backup/backup.log
rsync -avrplogDtHz /source_dir/* /backup/desination_dir/
echo "`date` Completed the sync of src_dir" >> /backup/backup.log

