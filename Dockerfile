FROM alpine
WORKDIR /home
RUN apk add --no-cache alpine-sdk clang
RUN git clone https://github.com/nomadcanuck/pict.git
RUN make -C pict/
RUN ln -s /home/pict/pict /usr/local/bin/pict
CMD ["pict"]
