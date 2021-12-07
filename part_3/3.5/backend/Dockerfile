FROM golang:1.15

WORKDIR /usr/src/app 

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost

COPY . .

RUN go build && \
	useradd -m appuser && chmod +x server

USER appuser

CMD ./server
