FROM node:20
WORKDIR /app
COPY  package.json /app
RUN yarn install
COPY . ./
EXPOSE 3000
CMD ["node", "index.js"]

