#!/usr/bin/ruby
#This script runs based on the backup_folder_list.rb file
#the variables name folders comes from that file
#To add locations to be backed up, please consult that files
require 'backup_config.rb'

folders = Array.new

File.open(FOLDER_LIST, "r") do |infile|
  while (line = infile.gets) 
    puts "Backing up: #{line}"
    folders << line
  end
end


unless File.directory? FULL_FOLDER_NAME
  command = "mkdir #{FULL_FOLDER_NAME}"
  system(command)
end


folders.each do |f|
  backup_folder_name = f.gsub("/","_")
  mkdir_command = "mkdir #{FULL_FOLDER_NAME}/#{backup_folder_name}"
  puts mkdir_command
  system(mkdir_command)
  rsync_command = "rsync -av #{f.chomp}/ #{FULL_FOLDER_NAME}/#{backup_folder_name.chomp}/"
  puts rsync_command
  system(rsync_command)
end