###BASE IMAGE###
FROM debian:latest


###INSTALLATION###

RUN apt-get update && \
        apt-get -y install curl git unzip man-db && \
	apt-get clean && \
        apt-get purge && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN curl https://rclone.org/install.sh | bash

COPY ./rclone_copy.sh ./rclone_copy.sh

VOLUME /data

#CMD ["rclone copy"]
ENTRYPOINT ["./rclone_copy.sh"]
