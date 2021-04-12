FROM node:14

WORKDIR /opt/app

COPY . /opt/app

RUN npm install

ARG APP_VERSION="dev"
ENV APP_VERSION="${APP_VERSION}"

CMD ["npm", "start"]
