ARG IMAGE_TAG="debian-12-v4"
ARG APP_ICON="https://upload.wikimedia.org/wikipedia/commons/1/13/128-user-krusader.png"

FROM jlesage/baseimage-gui:${IMAGE_TAG}
ENV APP_NAME="Krusader" \
    ROOT_PATH="/mnt"

# Krusader installation
RUN add-pkg krusader breeze-icon-theme kdiff3 krename zip unzip bzip2

# Set application icon
ARG APP_ICON
RUN install_app_icon.sh ${APP_ICON}

# Entrypoint script
COPY startapp.sh /startapp.sh
RUN chmod +x /startapp.sh

# Volumes definition
VOLUME ["/config"]
