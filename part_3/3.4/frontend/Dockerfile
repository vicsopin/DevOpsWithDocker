FROM ubuntu:latest

WORKDIR /usr/src/app

COPY . .

EXPOSE 5000

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN apt update && apt install -y curl && \
	curl -sL https://deb.nodesource.com/setup_14.x | bash && \
	apt install -y nodejs && \
	npm install -g serve && \
	npm install && \
	npm run build && \
	useradd -m appuser && \
	chown -R appuser .

USER appuser

CMD [ "serve", "-s", "-l", "5000", "build" ]
