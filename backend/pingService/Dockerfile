FROM golang:1.17-alpine AS build
WORKDIR /app
COPY . .
RUN go build -o pingService

FROM alpine:3.15
COPY --from=build /app/pingService /app/pingService
EXPOSE 4000
CMD ["/app/pingService"]
