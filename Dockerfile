FROM mhart/alpine-node:12.16.3

ADD . /eth-netstats
WORKDIR /eth-netstats

RUN npm install 
RUN npm install -g grunt-cli
RUN grunt

EXPOSE 3000
CMD npm start