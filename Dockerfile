FROM alpine:latest

RUN apk --no-cache add python3 py3-pip
RUN pip install authenticator bottle protobuf qrcode Pillow

COPY extract_otp_secret_keys /usr/bin/extract_otp_secret_keys

ENTRYPOINT ["/usr/bin/server"]
CMD [""]
