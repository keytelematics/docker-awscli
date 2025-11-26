FROM docker:git

RUN apk update
RUN apk add --no-cache \
        curl \
        unzip \
        groff \
        less \
        jq \
        gettext \
        bash \
        aws-cli

RUN rm /var/cache/apk/*

CMD ["bash"]