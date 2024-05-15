FROM rabbitmq:3-management

ENV RABBITMQ_NODENAME rabbit@$RENDER_SERVICE_NAME
COPY rabbitmq.conf /etc/rabbitmq/

RUN echo ${RABBITMQ_NODENAME}

RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf

# USER rabbitmq:rabbitmq
