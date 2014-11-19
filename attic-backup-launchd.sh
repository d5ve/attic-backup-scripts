#!/bin/bash

HOMEDIR=/Users/dave.webb
REPOSITORY=$HOMEDIR/Backups/WFH.attic
NOW=$(date '+%Y-%m-%d_%H%M%S')

# Backup all of HOMEDIR except excluded directories
attic create --stats                            \
    $REPOSITORY::WFH-automated-$NOW             \
    $HOMEDIR                                    \
    --exclude $HOMEDIR/.Trash                   \
    --exclude $HOMEDIR/.cache                   \
    --exclude $HOMEDIR/Applications             \
    --exclude $HOMEDIR/Apps                     \
    --exclude $HOMEDIR/Backups                  \
    --exclude $HOMEDIR/Downloads                \
    --exclude $HOMEDIR/Library/Caches           \
    --exclude $HOMEDIR/Movies                   \
    --exclude $HOMEDIR/Music                    \
    --exclude $HOMEDIR/Pictures                 \
    --exclude $HOMEDIR/Public                   \
    --exclude '*.pyc'                           \
    --exclude '*.swp'

# Use the `prune` subcommand to maintain a reasonable set of backups.
attic prune -v $REPOSITORY --keep-hourly=48 --keep-daily=7 --keep-weekly=4 --keep-monthly=18 --keep-yearly=10

