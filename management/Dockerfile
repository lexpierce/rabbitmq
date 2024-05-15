FROM nginx:stable-alpine-slim
COPY rabbitmq-management.conf.template /etc/nginx/templates/
RUN rm /etc/nginx/conf.d/default.conf /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
