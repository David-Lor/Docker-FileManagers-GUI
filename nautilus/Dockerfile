ARG IMAGE_TAG="debian-11"
ARG APP_ICON="https://upload.wikimedia.org/wikipedia/commons/3/36/GNOME_Files_logo.png"

FROM jlesage/baseimage-gui:${IMAGE_TAG}
ENV APP_NAME="Nautilus" \
    ROOT_PATH="/mnt"

# Nautilus installation
RUN add-pkg nautilus

# Set application icon
ARG APP_ICON
RUN install_app_icon.sh ${APP_ICON}

# Entrypoint script
COPY startapp.sh /startapp.sh

# Volumes definition
VOLUME ["/config"]
