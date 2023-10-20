FROM node:20-alpine

RUN apk add --no-cache \
  git

WORKDIR /svg-icons
COPY package.json /svg-icons/
RUN npm install --ignore-scripts

COPY . .

ENTRYPOINT ["npm", "run", "svgo", "--", "/image.svg"]
