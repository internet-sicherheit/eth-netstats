FROM mhart/alpine-node:12.16.3
# <"" | "all" | "lite">

ARG EDITION="all"
ENV EDITION $EDITION
EXPOSE 3000

ADD . /eth-netstats
WORKDIR /eth-netstats

RUN npm install && npm install -g grunt-cli && grunt

CMD npm start