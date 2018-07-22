FROM node:latest
RUN npm install -g yarn serve

RUN mkdir -p /app
WORKDIR /app

COPY ./package.json /app/
COPY ./yarn.lock /app/
RUN yarn install --prod

# 复制代码到 App 目录
COPY . /app
RUN yarn build

CMD ["serve", "-p", "80", "-s", "build"]