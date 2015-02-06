#!/bin/bash

# 1. backup current settings settings
# 2. use settings from git repo

SCRIPT_DIR=$(cd `dirname $0` && pwd)
GIT_REPO_DIR="$SCRIPT_DIR/.."

TIME=`date "+%Y-%m-%d_%H-%M-%S"`

FILENAME=".gitaliases"

TARGET_DIR="$HOME"

function use {
    # backup
    cp $TARGET_DIR/$FILENAME $TARGET_DIR/$FILENAME.bak_$TIME
    # use settings from git repo
    cp $GIT_REPO_DIR/$FILENAME $TARGET_DIR/$FILENAME
}

function save {
    cp $TARGET_DIR/$FILENAME $GIT_REPO_DIR/$FILENAME
}

function remove_backup {
    rm -i $TARGET_DIR/$FILENAME.bak*
}

CMD=$1
case $CMD in
    use)
        use
        ;;
    save)
        save
        ;;
    remove_backup)
        remove_backup
        ;;
    *)
        echo "Usage:"
        echo -e "\t$0 use - backup current settings and use keybinding from git repo"
        echo -e "\t$0 save - copy current keybinding settings to git repo"
        ;;
esac
