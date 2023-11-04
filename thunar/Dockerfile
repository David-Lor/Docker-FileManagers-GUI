ARG IMAGE_TAG="debian-11"
ARG APP_ICON="https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Thunar.svg/600px-Thunar.svg.png"

FROM jlesage/baseimage-gui:${IMAGE_TAG}
ENV APP_NAME="Thunar" \
    ROOT_PATH="/mnt"

# Nautilus installation
RUN add-pkg thunar

# Set application icon
ARG APP_ICON
RUN install_app_icon.sh ${APP_ICON}

# Entrypoint script
COPY startapp.sh /startapp.sh

# Volumes definition
VOLUME ["/config"]
