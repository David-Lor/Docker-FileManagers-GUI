ARG IMAGE_TAG="debian-12-v4"
ARG APP_ICON="https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Thunar.svg/600px-Thunar.svg.png"

FROM jlesage/baseimage-gui:${IMAGE_TAG}
ENV APP_NAME="Thunar" \
    ROOT_PATH="/mnt"

# Thunar installation
RUN add-pkg thunar breeze-icon-theme

# Set application icon
ARG APP_ICON
RUN install_app_icon.sh ${APP_ICON}

# Entrypoint script
COPY startapp.sh /startapp.sh
RUN chmod +x /startapp.sh

# Volumes definition
VOLUME ["/config"]
