# Use Docker for Deployment test

Recommanded docker command:

To build the image:
```
docker build -t vimrcdev .
```

To run the image. Note bind mount is used. You will modify the file in .vim with lasting effects.

```
docker run -it --mount type=bind,src=$HOME/.vim/,target=/root/test/ vimrcdev
```
