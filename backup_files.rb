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


#Get times starting with current time
NOW = Time.now.strftime("%m_%d_%Y")

#Make the filename
FOLDERNAME = "backup_#{NOW}"
FULL_FOLDER_NAME = "#{BACKUP_LOCATION}/#{FOLDERNAME}"

unless File.directory? FULL_FOLDER_NAME
  command = "mkdir #{FULL_FOLDER_NAME}"
  system(command)
end


folders.each do |f|
  temp_f = f
  tar_file_name = temp_f.reverse.chop
  tar_file_name = temp_f.reverse
  tar_file_name = temp_f.split("/").join("_")
  tar_file_name.chomp!
  tar_file_name = tar_file_name + ".tar.gz"
  tar_file_name = FULL_FOLDER_NAME+"/"+tar_file_name
  puts "Creating tar file: #{tar_file_name} for folder #{f}"
  command = "tar -czf #{tar_file_name} #{f}"
  puts command
  system(command)
end