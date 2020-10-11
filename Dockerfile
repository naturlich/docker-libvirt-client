FROM alpine:3.12.0

LABEL maintainer="Derek Su <dereksu@qnap.com>"

RUN apk update \
	&& apk add --no-cache libvirt-client

CMD ["tail", "-f", "/dev/null"]
