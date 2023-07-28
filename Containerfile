#Builder stage
FROM alpine:latest as builder
WORKDIR /app
COPY data.txt .

#Final stage
FROM fedora:latest
WORKDIR /app
COPY --from=builder /app/data.txt .



