FROM rabbitmq:3-management

# ARG RENDER_EXTERNAL_HOSTNAME
ARG RENDER_SERVICE_NAME
ENV RABBITMQ_NODENAME rabbit@${RENDER_SERVICE_NAME}
# ENV RABBITMQ_NODENAME rabbit@localhost

COPY rabbitmq.conf /etc/rabbitmq/
RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf
