Author: Jason Draper

General Information:
This is a set of scripts I've compiled to make backing up any *nix system fairly simple.  It allows for backing up of MySQL databases as well as just directories.  The system will backup what you have chosen and output a tarball file with the date and time appropriately for all your backup information.  After the file has been created it is up to you to either move the file off site to a server or to backup to a cd/external drive.

Instructions for settings up:
1.  Change the following variables within ruby_config.rb:
	-