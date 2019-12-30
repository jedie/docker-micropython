# docker-micropython

Docker image to compile micropython and freeze modules

* https://github.com/micropython/micropython

```
$ ./build.sh 
+ docker build . --pull -t jedie/micropython:latest

$ ./shell.sh
+ docker run -it jedie/micropython:latest /bin/bash
mpy@2f1a0844f5cf:/mpy$ ./micropython/ports/unix/micropython -c "import sys;print(sys.implementation)"
(name='micropython', version=(1, 12, 0), mpy=2821)
```

Based on the docker image https://hub.docker.com/r/jedie/esp-open-sdk made with: https://github.com/jedie/docker-esp-open-sdk
