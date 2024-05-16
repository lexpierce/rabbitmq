FROM rabbitmq:3-management

# ENV RABBITMQ_NODENAME=rabbit@localhost

COPY rabbitmq.conf /etc/rabbitmq/
RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf

# USER rabbitmq:rabbitmq
