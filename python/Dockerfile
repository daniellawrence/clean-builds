FROM debian:latest

RUN apt update
RUN apt install -y wget build-essential git
RUN wget https://github.com/daniellawrence/debbie/raw/master/output/debbie_0.0.1_all.deb
RUN dpkg -i debbie_0.0.1_all.deb

RUN apt install -y libbz2-dev libsqlite3-dev libreadline-dev zlib1g-dev libncurses5-dev libssl-dev libgdbm-dev lzma-dev

RUN wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tgz
RUN tar xf Python-3.6.3.tgz
WORKDIR Python-3.6.3
RUN ./configure --prefix=/fakeroot/usr/local/python36 --enable-optimizations
RUN make -j 10
RUN make install
WORKDIR /
RUN /usr/local/bin/debbie -name python36 -path /fakeroot -v 3.6.3
CMD /bin/bash
