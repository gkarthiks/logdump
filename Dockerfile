FROM golang:alpine AS builder

RUN apk update && apk add --no-cache git
COPY . $GOPATH/src/github.com/gkarthiks/logdump/
WORKDIR $GOPATH/src/github.com/gkarthiks/logdump/
RUN go build -o /go/bin/logdump


FROM scratch
COPY --from=builder /go/bin/logdump /go/bin/logdump
ENTRYPOINT ["/go/bin/logdump"]
