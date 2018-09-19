#!/bin/bash

echo Running rclone, copying the content of \(mounted\) /data folder into "$@"
#echo $RCLONE_CONFIG_MYREMOTE_TYPE
#echo $RCLONE_CONFIG_MYREMOTE_ENDPOINT
#rclone listremotes
#rclone lsd myremote:

#rclone copy -v --dry-run /data $@
rclone copy -v /data $@

