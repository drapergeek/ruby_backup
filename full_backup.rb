#!/usr/bin/ruby
#This is a script to call both the sql backups as well as the files backup
unless File.exists? 'backup_config.rb'
  puts 'The backup configuration cannot be found, please check to be sure you have the correct file'
  Process.exit
end

require 'backup_config.rb'

puts 'Beginning full backup'
puts 'Backing up sql dbs'

command = "ruby #{SQL_SCRIPT}"
system(command)

puts 'Backup up folders'
command = "ruby #{FOLDER_SCRIPT}"
system(command)

puts "Full backup complete, all files were stored in #{BACKUP_LOCATION}"

