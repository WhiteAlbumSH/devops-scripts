FROM alpine:latest
RUN apk add --no-cache bash curl
COPY my_backup.sh /script.sh
RUN chmod +x /script.sh
CMD ["/script.sh"]

