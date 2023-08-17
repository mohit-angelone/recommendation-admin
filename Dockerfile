FROM node:16
ENV NODE_ENV=production
WORKDIR /opt/
COPY ./package.json ./yarn.lock ./
ENV PATH /opt/node_modules/.bin:$PATH
RUN  yarn install
WORKDIR /opt/app
COPY . .
RUN yarn build
EXPOSE 1337
CMD ["yarn", "start"]