FROM riversafe/eze-cli:latest
ENV COMMAND=${{github.events.inputs.eze_command}}
WORKDIR /data
# USER root
# RUN mkdir -p /data/reports
# RUN chown ezeuser /data/reports
COPY . .
USER ezeuser
RUN eze $COMMAND
# RUN ls -a
# RUN cd reports && ls -a
# ENTRYPOINT [ "eze", "test" ]
