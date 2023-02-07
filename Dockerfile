FROM node:19.6.0-alpine

MAINTAINER "Maintainer" <maintainer@example.com>
ENV container docker

WORKDIR /usr/app

ENV CHROME_BIN="/usr/bin/chromium-browser" \
    PUPPETEER_SKIP_CHROMIUM_DOWNLOAD="true"

RUN set -x \
    && apk update \
    && apk upgrade \
    && apk add --no-cache \
    udev \
    ttf-freefont \
    chromium

COPY src/webpage-screenshot/src/app.js src/webpage-screenshot/src/package*.json ./

RUN npm install

CMD ["node", "app.js"]