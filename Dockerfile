FROM node:alpine3.22
WORKDIR /app
RUN npm install -g yarn
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile
COPY app.js .
EXPOSE 3001
CMD ["node", "app.js"]
