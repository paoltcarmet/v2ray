FROM nginx:alpine

COPY default.conf.template /etc/nginx/conf.d/
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
