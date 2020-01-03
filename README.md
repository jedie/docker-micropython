# docker-micropython

Docker image to compile [micropython](https://github.com/micropython/micropython) and freeze modules.

It contains a ready-to-use unix port and mpy-cross and based on the docker image https://hub.docker.com/r/jedie/esp-open-sdk made with: https://github.com/jedie/docker-esp-open-sdk for easier build ESP32/8266 ports.

The ready to use docker image **jedie/micropython** is build via [github actions](https://github.com/jedie/docker-micropython/actions) and pushed to docker hub: https://hub.docker.com/r/jedie/micropython

usage e.g.:
```
# Just clone the sources:

~$ git clone https://github.com/jedie/docker-micropython.git
~$ cd docker-micropython

# Display all make targets:

~/docker-micropython$ make
make targets:
  help              This help page
  build             build jedie/micropython:latest
  shell             Open bash shell in micropython docker container
  micropython_shell Starts micropython unix port as interactive interpreter

# e.g.: Starts micropython unix port as interactive interpreter

~/docker-micropython$ make micropython_shell
...
docker run -it jedie/micropython:latest /mpy/micropython/ports/unix/micropython
MicroPython 1070984 on 2019-12-30; linux version
Use Ctrl-D to exit, Ctrl-E for paste mode
>>> import sys
>>> sys.implementation
(name='micropython', version=(1, 12, 0), mpy=2821)
>>>
```

Used here: https://github.com/jedie/micropython-sonoff-webswitch
