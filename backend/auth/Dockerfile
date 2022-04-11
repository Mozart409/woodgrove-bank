FROM golang:1.17-alpine AS build
WORKDIR /app
COPY . .
RUN go build -o auth

FROM alpine:3.15
COPY --from=build /app/auth /app/auth
EXPOSE 4000
CMD ["/app/auth"]
