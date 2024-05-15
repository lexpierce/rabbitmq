FROM rabbitmq:3-management

ARG RENDER_SERVICE_NAME
ENV RABBITMQ_NODENAME rabbit@${RENDER_SERVICE_NAME}

RUN echo ${RABBITMQ_NODENAME}

COPY rabbitmq.conf /etc/rabbitmq/
RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf

USER rabbitmq:rabbitmq
