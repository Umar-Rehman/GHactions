FROM riversafe/eze-cli:latest
WORKDIR /data
USER root
RUN mkdir -p /data/reports
RUN chown ezeuser /data/reports
COPY . .
USER ezeuser
ENTRYPOINT [ "eze", "test" ]
