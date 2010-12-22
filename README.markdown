##Jason Draper

#General Information
This is a set of scripts I've compiled to make backing up any *nix system fairly simple.  It allows for backing up of MySQL databases as well as just directories.  The system will backup what you have chosen and output a tarball file with the date and time appropriately for all your backup information.  After the file has been created it is up to you to either move the file off site to a server or to backup to a cd/external drive.

##Instructions for settings up:
1.Change the following variables within ruby_config.rb
	*BACKUP_LOCATION - this should be the path to the directory where you want your backups stored
	*BACKUP_MYSQL - if you do not wish to backup a MySQL database, change this variable to 0
	*USERNAME, PASSWORD - set these variables to a MySQL user with full permissions on your database so that all the data can be properly extracted.
1.Inside folderlist.txt add the directories that you want to be backed up.  One directory per line.  For example, if you want to backup '/home/user/mystuff' and '/etc' then your file would look like:
*/home/user/mystuff
*/etc
Please note that the user running the script needs to have permission to these directories so if you plan on setting this script on a cron job, make sure that the runner has permissions over the directories.
1.Start the script!  To run the file you may either modify the permissions to allow the script to be executable or simply run 'ruby full_backup.rb'.  Depending on the size of the directories you have chosen to backup, this may take a while.
1.Move to the directory that you have chosen and move your backup to wherever you want(offsite server, external drive, cd, whatever)
1.Enjoy!