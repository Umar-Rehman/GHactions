# FROM riversafe/eze-cli:latest
# WORKDIR /data
# # RUN useradd --create-home ezeuser
# USER root
# RUN mkdir -p /data/reports
# RUN chown ezeuser /data/reports
# COPY . .
# # RUN ls -a
# # Change User
# USER ezeuser
# # cli eze
# # run with "docker run --rm -v $(pwd -W):/data eze-docker --version"
# # USER root
# ENTRYPOINT [ "eze", "test" ]

# Base image
FROM alpine:latest
# installes required packages for our script
RUN apk add --no-cache bash
RUN apt-get install docker
COPY entrypoint.sh /entrypoint.sh
# change permission to execute the script and
RUN chmod +x /entrypoint.sh
# file to execute when the docker container starts up
ENTRYPOINT ["/entrypoint.sh"]
