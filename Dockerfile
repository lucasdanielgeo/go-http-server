FROM golang:1.21-alpine AS builder

RUN apk add alpine-sdk

WORKDIR /app

COPY go.mod .
COPY Makefile .

RUN go mod download

COPY . .

RUN make build

FROM golang:1.21-alpine AS runner

EXPOSE 3000

WORKDIR /app

COPY --from=builder /app/bin/server .

CMD ["./server"]