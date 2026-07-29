FROM nginx:alpine

LABEL org.opencontainers.image.title="codyssey-mission1"

COPY site/ /usr/share/nginx/html/
