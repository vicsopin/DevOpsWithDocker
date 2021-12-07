FROM node:14-alpine

WORKDIR /usr/src/app

COPY . .

EXPOSE 5000

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN apk add --no-cache nodejs npm && \
    npm install && \ 
    npm run build && \
    npm install -g serve && \
    adduser -D appuser && \
    chown -R appuser:appuser /usr/src/app && \
    rm -rf /var/lib/apt/lists/* 

USER appuser

CMD ["serve","-s","-l","5000","build"]