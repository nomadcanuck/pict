FROM alpine
WORKDIR /home
RUN apk add --no-cache alpine-sdk clang
RUN git clone https://github.com/nomadcanuck/pict.git /home
RUN make
CMD ["./pict"]
