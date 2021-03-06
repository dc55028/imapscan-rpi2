#! /bin/bash

IMAGE_VERSION=0.17
CONTAINER_VOLUMES_DIR=/opt/imapscan

sudo mkdir -p ${CONTAINER_VOLUMES_DIR}/spamassassin \
              ${CONTAINER_VOLUMES_DIR}/accounts \
              ${CONTAINER_VOLUMES_DIR}/imapfilter

docker run -d --name imapscan_${IMAGE_VERSION} \
	-v ${CONTAINER_VOLUMES_DIR}/spamassassin:/var/spamassassin \
	-v ${CONTAINER_VOLUMES_DIR}/imapfilter:/root/.imapfilter \
	-v ${CONTAINER_VOLUMES_DIR}/accounts:/root/accounts \
	domcomte/imapscan-rpi2:${IMAGE_VERSION}
