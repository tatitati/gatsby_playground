FROM node:12-alpine

COPY package.json ./
COPY package-lock.json ./
COPY gatsby-browser.js ./
COPY gatsby-config.js ./
COPY gatsby-node.js ./
COPY gatsby-ssr.js ./
ADD src ./src
RUN npm install --global gatsby-cli
RUN npm install
EXPOSE 8000

CMD gatsby develop -H 0.0.0.0