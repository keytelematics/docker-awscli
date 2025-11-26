FROM docker:git

RUN apk update
RUN apk add --no-cache \
        curl \
        unzip \
        groff \
        less \
        jq \
        gettext \
        bash

# Install AWS CLI v2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip" \
    && unzip /tmp/awscliv2.zip -d /tmp \
    && /tmp/aws/install \
    && rm -rf /tmp/aws /tmp/awscliv2.zip
    
RUN rm /var/cache/apk/*

CMD ["bash"]