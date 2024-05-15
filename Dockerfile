FROM rabbitmq:3-management

ARG RENDER_EXTERNAL_HOSTNAME
ENV RABBITMQ_NODENAME rabbit@${RENDER_EXTERNAL_HOSTNAME}

RUN echo ${RABBITMQ_NODENAME}

COPY rabbitmq.conf /etc/rabbitmq/
# RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf

# USER rabbitmq:rabbitmq
