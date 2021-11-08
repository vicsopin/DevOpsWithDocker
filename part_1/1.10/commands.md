~/Documents/GitHub/DevOpsWithDocker/part_1/1.10$ docker run -p 8080:8080 web-server
[GIN-debug] [WARNING] Creating an Engine instance with the Logger and Recovery middleware already attached.

[GIN-debug] [WARNING] Running in "debug" mode. Switch to "release" mode in production.
 - using env:	export GIN_MODE=release
 - using code:	gin.SetMode(gin.ReleaseMode)

[GIN-debug] GET    /*path                    --> server.Start.func1 (3 handlers)
[GIN-debug] Listening and serving HTTP on :8080
[GIN] 2021/11/07 - 19:57:44 | 200 |      45.629µs |      172.17.0.1 | GET      "/"
[GIN] 2021/11/07 - 19:57:44 | 200 |      25.882µs |      172.17.0.1 | GET      "/favicon.ico"





Browser localhost:8080 output:
{"message":"You connected to the following path: /","path":"/"}

