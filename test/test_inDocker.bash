#!/bin/bash

docker run -it --mount type=bind,src=$HOME/.vim/,target=/root/test/ vimrcdev
