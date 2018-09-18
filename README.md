# What it does
This container runs the *rclone copy* command to copy local content to a remote repository.
To do this the user must setup the remote config at runtime. How to do this is explained below. 

# Setup credentials

Credentials and remote configuration must be set at runtime as environment variables. They can be input either in the command line or in a separate config file.

## Command-line

You can set the different environment variables in the command line using the `-e` flag as seen [here](https://docs.docker.com/engine/reference/run/#env-environment-variables).
Depending on the remote type though this might require an extremely long command line.

## Config file

You can also choose to define all (or some) of your environment variables in a config file as seen [here](https://docs.docker.com/compose/env-file/).
The syntax is simple enough, each line contains a single environment variable defined as:
VAR=VAL
To use your .env file simply add it to the command line this way:
```docker run --env-file credentials.env ...```

## Required information

The required environment variables for each remote depend on the remote type you want *rclone* to connect to.
The different remote types available in *rclone* can be found [here](https://rclone.org/overview/).

### Remote configuration

# Example

## Config file    

_credentials.env_
```
RCLONE_CONFIG_MYREMOTE_TYPE=s3
RCLONE_CONFIG_MYREMOTE_PROVIDER=Other
RCLONE_CONFIG_MYREMOTE_ACCESS_KEY_ID=XXXXXX
RCLONE_CONFIG_MYREMOTE_SECRET_ACCESS_KEY=XXXXXX
RCLONE_CONFIG_MYREMOTE_REGION=us-west-1
RCLONE_CONFIG_MYREMOTE_ENDPOINT=XXXXXX
RCLONE_CONFIG_MYREMOTE_ACL=private
``̀

## Full command line    

docker run -v /path/to/mydata:/data --env-file credentials.env rclone_copy test-data.txt myremote:bucket/path

# Reference   
* **rclone**: <https://rclone.org/>   
