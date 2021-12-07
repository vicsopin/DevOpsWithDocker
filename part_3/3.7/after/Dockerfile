FROM openjdk:8-alpine AS builder

WORKDIR /app
COPY . .

RUN ./mvnw package

FROM openjdk:alpine AS runner

WORKDIR /app

EXPOSE 8080

RUN adduser -D runner

USER runner

COPY --from=builder --chown=runner /app/target/docker-example-1.1.3.jar ./app.jar

CMD [ "java", "-jar", "./app.jar" ]