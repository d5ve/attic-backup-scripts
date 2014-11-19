Script and launchd plist for running hourly Attic backups
=========================================================

https://attic-backup.org/quickstart.html#automating-backups

Launchd
=======
http://paul.annesley.cc/2012/09/mac-os-x-launchd-is-cool/
http://nathangrigg.net/2012/07/schedule-jobs-using-launchd/#launchd-basics
http://alvinalexander.com/mac-os-x/mac-osx-startup-crontab-launchd-jobs

Install Launchd script
======================

$ cd ~/Library/LaunchAgents/
$ launchctl
launchd% load org.attic-backup.hourly.plist
launchd% start org.attic-backup.hourly
