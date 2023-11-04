ARG IMAGE_TAG="debian-11"
ARG APP_ICON="https://upload.wikimedia.org/wikipedia/commons/1/13/128-user-krusader.png"

FROM jlesage/baseimage-gui:${IMAGE_TAG}
ENV APP_NAME="Krusader" \
    ROOT_PATH="/mnt"

# TODO Install icons & other recommended apps from startup
RUN add-pkg krusader breeze-icon-theme

# Set application icon
ARG APP_ICON
RUN install_app_icon.sh ${APP_ICON}

# Entrypoint script
COPY startapp.sh /startapp.sh

# Volumes definition
VOLUME ["/config"]
