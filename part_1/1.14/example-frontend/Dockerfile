FROM ubuntu:latest

WORKDIR /usr/src/app

COPY . .

EXPOSE 5000

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN apt update && apt install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt install -y nodejs
RUN npm install -g serve
RUN npm install
RUN npm run build

CMD [ "serve", "-s", "-l", "5000", "build" ]
