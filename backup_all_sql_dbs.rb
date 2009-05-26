#!/usr/bin/ruby
require 'backup_config.rb'
puts 'Backing up all sql dbs'

NOW = Time.now.strftime("%m_%d_%Y")
NOW_WITH_TIME = Time.now.strftime("%m_%d_%Y_%H_%M_%S")

#Make the foldername
FOLDERNAME = "backup_#{NOW}"

#Make the filename
FILENAME = "sqldump-#{NOW_WITH_TIME}.sql"


#DUMP IT !
command = "mysqldump -u #{USERNAME} --password=#{PASSWORD} --all-databases >> #{FILENAME}"
FILE_LOCATION = "#{BACKUP_LOCATION}/#{FOLDERNAME}"
move_command = "mv #{FILENAME} #{FILE_LOCATION}/"

#run it
system(command)
puts 'All dbs were backed up correctly'
puts 'Moving file...'

unless File.directory? FILE_LOCATION
  puts 'The directory does not exist...creating'
  system("mkdir #{FILE_LOCATION}")
end

system(move_command)
puts "The file was stored at #{FILE_LOCATION}/#{FILENAME}"





