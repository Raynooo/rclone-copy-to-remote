#!/bin/bash

echo Running rclone copy with args: "$@"
echo $RCLONE_CONFIG_MYREMOTE_TYPE
echo $RCLONE_CONFIG_MYREMOTE_ENDPOINT
rclone listremotes
rclone lsd myremote:
