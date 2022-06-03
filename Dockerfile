FROM golang:1.18-alpine as builder

WORKDIR /app

COPY go.mod ./
COPY go.sum ./

COPY *.go ./

RUN go build -o /sample

CMD [ "/sample" ]

FROM alpine:3.16
COPY --from=builder /sample /bin
COPY --from=builder /go/pkg/mod/github.com/razorpay/ifsc /go/pkg/mod/github.com/razorpay/ifsc

ENTRYPOINT [ "/bin/sample" ]