FROM debian:latest

RUN apt update
RUN apt install -y curl build-essential git

RUN apt install -y libbz2-dev libsqlite3-dev libreadline-dev zlib1g-dev libncurses5-dev libssl-dev libgdbm-dev lzma-dev

RUN curl https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tgz -o python.tgz
RUN tar xf python.tgz
WORKDIR Python-3.6.3
RUN ./configure --prefix=/usr/local/python36 --enable-optimizations
RUN make -j 10
RUN make install
RUN tar cf - /usr/local/python36 | gzip -9 > /python36.tgz
RUN ls -lh /python36.tgz
CMD /bin/bash
