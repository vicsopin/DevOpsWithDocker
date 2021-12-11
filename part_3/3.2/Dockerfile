FROM docker:20.10.11-alpine3.14

RUN apk update && apk add git

COPY ./script.sh .

RUN chmod a+x script.sh .

CMD ./script.sh