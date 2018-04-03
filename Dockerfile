FROM gradle:jdk8-alpine

USER root

WORKDIR /root

RUN apk add --no-cache git

RUN git clone https://github.com/Swagger2Markup/swagger2markup-cli \
 && cd swagger2markup-cli \
 && gradle assemble \
 && mv build/libs/swagger2markup-cli-1.3.2.jar /usr/local/lib/ \
 && rm -rf /root/swagger2markup-cli \
 && rm -rf $HOME/.gradle

RUN apk add --no-cache ruby

RUN gem install --no-docu --no-ri asciidoctor

COPY ./convert.sh /root

ENTRYPOINT ["sh", "/root/convert.sh"]
