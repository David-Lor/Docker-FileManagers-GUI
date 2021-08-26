# File Managers apps - Docker images

Docker images for multiple GNU/Linux file managers apps, using the [jlesage/docker-baseimage-gui](https://github.com/jlesage/docker-baseimage-gui) image.
Once deployed, each app can be accessed through a modern web browser or a VNC client.
This image is only available for **linux/amd64**.

**These images are experimental and might have undesirable effects. Use it under your responsability!**

## Getting started

Available file browsers apps are: `nautilus`, `thunar`, `dolphin`.

```bash
# Which file browser app to use
FILEBROWSER="nautilus"

docker run -d --name=$FILEBROWSER -p 5800:5800 -v /etc/localtime:/etc/localtime:ro ghcr.io/david-lor/$FILEBROWSER-gui:latest
```

### Building

The following commands locally build and deploy a container of a certain file browser included in this repository:

```bash
# git clone...

# Which file browser app to use
FILEBROWSER="nautilus"

# Which tag version to use for building ("debian-10" recommended); One of: https://github.com/jlesage/docker-baseimage-gui#images
BUILD_TAG="debian-10"

docker build --build-arg IMAGE_TAG=$BUILD_TAG -t local/$FILEBROWSER ./$FILEBROWSER
docker run -d --name=$FILEBROWSER -p 5800:5800 -v /etc/localtime:/etc/localtime:ro local/$FILEBROWSER
```
