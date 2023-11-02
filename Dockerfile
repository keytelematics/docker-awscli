FROM docker:git

RUN apk update
RUN apk -Uuv add groff less python3 py-pip3 jq gettext bash && \
	pip3 install awscli && \
	apk --purge -v del py-pip3 && \
	rm /var/cache/apk/*

CMD ["bash"]
