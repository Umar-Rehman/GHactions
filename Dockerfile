FROM riversafe/eze-cli:latest
WORKDIR /data
# USER root
# RUN mkdir -p /data/reports
# RUN chown ezeuser /data/reports
COPY . .
USER ezeuser
RUN eze test
# RUN ls -a
# RUN cd reports && ls -a
# ENTRYPOINT [ "eze", "test" ]
