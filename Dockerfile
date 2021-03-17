FROM alpine:3.12.4
RUN apk add --no-cache libxml2-utils
ADD pom-parser.sh /bin/
RUN chmod +x /bin/pom-parser.sh
ENTRYPOINT /bin/pom-parser.sh