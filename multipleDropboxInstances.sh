#!/bin/bash

 #*******************************
 # Multiple dropbox instances
 #*******************************

current_HOME=$HOME
dropboxes=".dropbox-paulim .dropbox-lichin"
                                                                                                         
 for dropbox in ${dropboxes[@]}; do
     if ! [ -d $HOME/$dropbox ];then
         mkdir $HOME/$dropbox
     fi
     export HOME=$HOME/$dropbox
     echo $HOME
     /$HOME/.dropbox-dist/dropboxd 2> /dev/null &
     export HOME=$current_HOME
 done
 export HOME=$current_HOME

