FROM rabbitmq:3-management

ARG RENDER_EXTERNAL_HOSTNAME
ARG RENDER_SERVICE_NAME
ENV RABBITMQ_NODENAME rabbit@${RENDER_EXTERNAL_HOSTNAME}

COPY rabbitmq.conf /etc/rabbitmq/
RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf
RUN chown -R rabbitmq:rabbitmq /var/lib/rabbitmq

# USER rabbitmq:rabbitmq
