FROM jedie/esp-open-sdk:latest

ENV TERM=xterm \
    DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
  git-core python3-dev build-essential autoconf libtool libffi-dev pkg-config

RUN set -x \
    && groupadd -g 1000 mpy && useradd mpy -u 1000 -g 1000 -s /bin/bash --no-create-home \
    && mkdir /mpy/ \
    && chown -Rf mpy:mpy /mpy/

USER mpy
WORKDIR /mpy/

RUN git clone --depth=1 --recursive https://github.com/micropython/micropython.git \
  && git clone --depth=1 --recursive https://github.com/micropython/micropython-lib.git

RUN cd /mpy/micropython \
    && make -C mpy-cross

RUN cd /mpy/micropython/ports/unix \
    && make deplibs \
    && make -j12 \
    && micropython --version

RUN cd /mpy/micropython/ports/esp8266 \
    && make clean \
    && make -j12