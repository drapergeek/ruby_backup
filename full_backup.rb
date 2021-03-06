#!/usr/bin/ruby
#This is a script to call both the sql backups as well as the files backup
unless File.exists? 'backup_config.rb'
  puts 'The backup configuration cannot be found, please check to be sure you have the correct file'
  Process.exit
end

require 'backup_config.rb'

puts 'Beginning full backup'

if BACKUP_MYSQL == 1
  puts 'Backing up sql dbs'
  command = "ruby #{SQL_SCRIPT}"
  system(command)
end

puts 'Backup folders'
command = "ruby #{FOLDER_SCRIPT}"
system(command)



if CREATE_TAR_FILE == 1
  #we need to tar up the file
  tar_command = "cd #{BACKUP_LOCATION} && tar -czf #{FOLDERNAME}.tar.gz #{FOLDERNAME} && rm -rf #{FOLDERNAME}"
  puts tar_command
  system(tar_command)
end



puts "Full backup complete, all files were stored in #{BACKUP_LOCATION}"

