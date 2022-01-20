FROM riversafe/eze-cli:latest
WORKDIR /data
USER root
RUN mkdir -p /data/reports
RUN chown ezeuser /data/reports
COPY . .
RUN ls .
# Change User
USER ezeuser
# cli eze
# run with "docker run --rm -v $(pwd -W):/data eze-docker --version"
ENTRYPOINT [ "eze", "test" ]