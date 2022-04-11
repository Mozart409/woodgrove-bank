FROM golang:1.17-alpine AS build
WORKDIR /app
COPY . .
RUN go build -o buy

FROM alpine:3.15
COPY --from=build /app/buy /app/buy
EXPOSE 4000
CMD ["/app/buy"]
