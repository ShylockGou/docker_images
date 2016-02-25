FROM alpine
RUN apk -U add unbound
RUN unbound-checkconf
CMD ["unbound","-c", "/etc/unbound/unbound.conf","-d"]

