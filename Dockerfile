# Build stage
FROM golang:1.20-alpine3.17 As builder
RUN mkdir /app
WORKDIR /app
COPY . .
RUN go build -o lesson86 main.go
# RUN env GOOS=linux GOARCH=arm64 go build -o lesson86 main.go

# Run stage
FROM alpine:3.13
WORKDIR /app
COPY --from=builder /app/lesson86 .
# copy config file
COPY --from=builder /app/app.env .

EXPOSE 8080

CMD ["/app/lesson86"]
