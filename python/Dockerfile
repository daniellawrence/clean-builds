FROM debian:latest

RUN apt update
RUN apt install -y wget build-essential git

RUN apt install -y libbz2-dev libsqlite3-dev libreadline-dev zlib1g-dev libncurses5-dev libssl-dev libgdbm-dev lzma-dev

RUN wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tgz
RUN tar xf Python-3.6.3.tgz
WORKDIR Python-3.6.3
RUN ./configure --prefix=/fakeroot/usr/local/python36 --enable-optimizations
RUN make -j 10
RUN make install
WORKDIR /

# Install debbie the fast debian packager
RUN wget https://github.com/daniellawrence/debbie/raw/master/output/debbie_0.0.2_all.deb
RUN dpkg -i debbie_0.0.2_all.deb

# Install he package for testing
RUN /usr/local/bin/debbie -name DSLpython36 -path /fakeroot -version 3.6.3
RUN dpkg -i /tmp/DSL*deb
RUN /usr/local/python36/bin/python3 -c 'import sys;print(sys.version)'

CMD /bin/bash
