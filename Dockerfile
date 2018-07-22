FROM node:8.11.3-alpine
RUN yarn global add serve
WORKDIR /opt/edt-frontend
COPY build .
CMD ["serve", "-p 80", "-s", "."]