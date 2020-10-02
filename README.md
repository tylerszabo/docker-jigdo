# Debian jigdo docker image

A docker image with Debian's flavor of `jigdo-lite`.

More information on downloading Debian with `jigdo` can be found on Debian's website: https://www.debian.org/CD/jigdo-cd/

More information about the `jigdo` utility can be found on the project website: https://www.einval.com/~steve/software/jigdo/

## Build

```sh
docker build -t tylerszabo/jigdo:latest .
```

## Run

By default `/output` in the container is used to store the downloaded files and as a working directory

```sh
docker run --rm -it -v "$HOME/Downloads/jigdo:/output" tylerszabo/jigdo:latest https://cdimage.debian.org/cdimage/archive/10.5.0/amd64/jigdo-cd/debian-10.5.0-amd64-netinst.jigdo
```
