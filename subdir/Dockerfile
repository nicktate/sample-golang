FROM golang:1.15-alpine AS build

WORKDIR /src
ENV CGO_ENABLED=0
COPY go.mod .
COPY go.sum .
RUN go mod download

COPY . .
RUN go build -o /out/sample-golang .

FROM scratch AS bin
COPY --from=build /out/sample-golang /bin/
