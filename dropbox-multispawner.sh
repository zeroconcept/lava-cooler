#!/bin/bash

VERBOSE=true

current_HOME=$HOME
dropboxes=".dropbox-user1 .dropbox-user2 .dropbox-user3"
for dropbox in $dropboxes
do
    HOME="/home/dropbox"
    ! [ -d "$HOME/$dropbox" ] && continue
    
    export HOME="$HOME/$dropbox"
    /$HOME/.dropbox-dist/dropboxd 2> /dev/null &

    $VERBOSE && echo $HOME
    #echo $`/home/dropbox/.dropbox-dist`

done

export HOME=#current_HOME
