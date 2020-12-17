FROM library/perl:5.20

WORKDIR /src
ENV CGO_ENABLED=0
COPY go.mod .
COPY go.sum .
RUN go mod download

COPY . .
RUN go build -o /out/sample-golang .

