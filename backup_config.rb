#/usr/bin/ruby
#This file is a settings file for backups
#PLease note that the backup files scripts should all be located in the same directory
#This file MUST be located in the same directory as the scripts

#This is the directory that you want your backups to be placed in
#Sub directories for the date will be created within this directory
BACKUP_LOCATION = "/Users/gdraper/backups"

#Unless you rename these files, you should not have to change these variables
SQL_SCRIPT = 'backup_all_sql_dbs.rb'
FOLDER_SCRIPT = 'backup_files.rb'

#Text file for the list of folders you want to backup
#The default is 'folderlist.txt' located in the same directory as your backup scripts
#but this could be placed anywhere you choose
FOLDER_LIST = 'folderlist.txt'


#Change this to 0 if you do not want to backup MySQL
BACKUP_MYSQL = 1


#Change this to zero if you do not want to tar the backup file after its in a folder
CREATE_TAR_FILE = 1
#DB USER NAME AND PASSWORD
#In order for the db backup to work properly, this must be a user that can access all the dbs
USERNAME = ''
PASSWORD = ''




#DO NOT CHANGE ANYTHING PAST THIS LINE!!!

#Name the folder!
NOW = Time.now.strftime("%m_%d_%Y")
NOW_WITH_TIME = Time.now.strftime("%m_%d_%Y_%H_%M_%S")
FOLDERNAME = "backup_#{NOW}"
FULL_FOLDER_NAME = "#{BACKUP_LOCATION}/#{FOLDERNAME}"