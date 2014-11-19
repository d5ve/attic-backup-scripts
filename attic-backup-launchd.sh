#!/bin/sh

REPOSITORY=username@remoteserver.com:repository.attic

# Backup all of /home and /var/www except a few
# excluded directories
attic create --stats                            \
    $REPOSITORY::hostname-`date +%Y-%m-%d`      \
    /home                                       \
    /var/www                                    \
    --exclude /home/*/.cache                    \
    --exclude /home/Ben/Music/Justin\ Bieber    \
    --exclude '*.pyc'

# Use the `prune` subcommand to maintain 7 daily, 4 weekly
# and 6 monthly archives.
attic prune -v $REPOSITORY --keep-daily=7 --keep-weekly=4 --keep-monthly=6

