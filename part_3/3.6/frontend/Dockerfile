FROM alpine as build-stage

WORKDIR /usr/src/app

COPY . .

EXPOSE 5000

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN apk add --no-cache nodejs npm && \
    npm install && \ 
    npm run build && \
    adduser -D appuser && \
    chown -R appuser: /usr/src/app && \
    rm -rf /var/lib/apt/lists/* 

USER appuser

FROM node:alpine

COPY --from=build-stage /usr/src/app/build build/

RUN npm install -g serve

CMD ["serve","-s","-l","5000","build"]