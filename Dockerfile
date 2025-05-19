# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04
# Maintainer information
MAINTAINER fasilcv@gmail.com
LABEL description="A custom Apache container based on Ubuntu 22.04"
# Update package repository, install Apache, and clear APT cache
RUN apt update && \
    apt install -y apache2 && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

RUN echo "Hello from Containerfile" > /var/www/html/index.html
EXPOSE 80
RUN useradd fasil
CMD ["apache2ctl", "-D", "FOREGROUND"]
