FROM riversafe/eze-cli:latest
WORKDIR /data
# RUN useradd --create-home ezeuser
USER root
RUN mkdir -p /data/reports
RUN chown ezeuser /data/reports
COPY . .
RUN ls -a
# Change User
USER ezeuser
# cli eze
# run with "docker run --rm -v $(pwd -W):/data eze-docker --version"
ENTRYPOINT [ "eze", "test" ]
