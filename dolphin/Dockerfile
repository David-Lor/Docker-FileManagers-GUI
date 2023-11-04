ARG IMAGE_TAG="debian-11"
ARG APP_ICON="https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Dolphin-icon.svg/600px-Dolphin-icon.svg.png"

FROM jlesage/baseimage-gui:${IMAGE_TAG}
ENV APP_NAME="Dolphin" \
    ROOT_PATH="/mnt"

# Nautilus installation
RUN add-pkg dolphin

# Set application icon
ARG APP_ICON
RUN install_app_icon.sh ${APP_ICON}

# Entrypoint script
COPY startapp.sh /startapp.sh

# Volumes definition
VOLUME ["/config"]
