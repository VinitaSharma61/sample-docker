FROM docker/compose 
RUN apk add --no-cache curl curl-dev jq bash
ADD ./script.sh /script.sh
RUN chmod +x /script.sh
CMD ["/script.sh”]
