#/usr/bin/ruby
#This file is a settings file for backups
#PLease note that the backup files scripts should all be located in the same directory
#This file MUST be located in the same directory as the scripts

#This is the directory that you want your backups to be placed in
#Sub directories for the date will be created within this directory
BACKUP_LOCATION = "/home/draper/backups"

#For file locations it is recommended to use full paths rather than relative but relative should work fine
SQL_SCRIPT = 'backup_all_sql_dbs.rb'
FOLDER_SCRIPT = 'backup_files.rb'

#Text file for the list of folders you want to backup
#The default is 'folderlist.txt' located in the same directory as your backup scripts
#but this could be placed anywhere you choose
FOLDER_LIST = 'folderlist.txt'

#DB USER NAME AND PASSWORD
#In order for the db backup to work properly, this must be a user that can access all the dbs
USERNAME = ''
PASSWORD = ''
