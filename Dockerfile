ARG NODE_VER=current-alpine

FROM node:${NODE_VER} as cdk

WORKDIR /usr/src/app

ARG NODE_ENV=dev
ARG NPM_TOKEN=
ARG CDK_VER=latest
ENV NODE_ENV=${NODE_ENV}
ENV CDK_VER=${CDK_VER}

RUN apk update && apk upgrade
RUN apk add --update --no-cache git man

RUN npm install -g typescript
RUN npm install -g aws-cdk@${CDK_VER}

ENTRYPOINT [ "cdk" ]