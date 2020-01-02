# docker-micropython

Docker image to compile [micropython](https://github.com/micropython/micropython) and freeze modules.

It contains a ready-to-use unix port and mpy-cross and based on the docker image https://hub.docker.com/r/jedie/esp-open-sdk made with: https://github.com/jedie/docker-esp-open-sdk for easier build ESP32/8266 ports.

The ready to use docker image **jedie/micropython** is build via [github actions](https://github.com/jedie/docker-micropython/actions) and pushed to docker hub: https://hub.docker.com/r/jedie/micropython


e.g.:
```
$ ./build.sh 
+ docker build . --pull -t jedie/micropython:latest

$ ./shell.sh
+ docker run -it jedie/micropython:latest /bin/bash
mpy@2f1a0844f5cf:/mpy$ ./micropython/ports/unix/micropython -c "import sys;print(sys.implementation)"
(name='micropython', version=(1, 12, 0), mpy=2821)
```

Used here: https://github.com/jedie/micropython-sonoff-webswitch
