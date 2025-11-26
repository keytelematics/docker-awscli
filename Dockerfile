FROM docker:git

RUN apk update
RUN apk -Uuv add groff 
RUN apk -Uuv add less 
RUN apk -Uuv add python3 
RUN apk -Uuv add py3-pip 
RUN apk -Uuv add jq 
RUN apk -Uuv add gettext 
RUN apk -Uuv add bash 
RUN apk -Uuv add awscli 
# RUN pip3 install awscli 
RUN apk --purge -v del py3-pip
RUN rm /var/cache/apk/*

CMD ["bash"]
