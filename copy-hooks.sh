#!/bin/sh
#
# Markus Funke
# https://github.com/FunkeMT
# 2015-10-23 
#
# Script copy all pre-commit-hooks from this directory
# into /path/to/repo/.git/hooks/

# exit on error
set -e

# User rights for chmod
RIGHTS=770

# Hooks
HOOKS="pre-commit pre-commit-styleC pre-commit-stylePY"

# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")

# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")

# git-Dir
GITDIR=$(git rev-parse --git-dir)
HOOKDIR="$GITDIR/hooks"

for hook in $HOOKS
do
    if [ -f "$SCRIPTPATH/$hook" ]; then
        # copy
        cp "$SCRIPTPATH/$hook" "$HOOKDIR/$hook"
        if [ $? != 0 ]; then
            exit 1
        fi
        
        # chmod -rwxrwx---
        chmod $RIGHTS "$HOOKDIR/$hook"
        if [ $? != 0 ]; then
            exit 1
        fi
    else
        echo "Error: file $hook not found."
        exit 1
    fi
done

