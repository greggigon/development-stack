#/bin/bash

DOCKER_PACKAGE=https://get.docker.com/rpm/1.7.0/centos-7/RPMS/x86_64/docker-engine-1.7.0-1.el7.centos.x86_64.rpm

wget $DOCKER_PACKAGE -O /tmp/docker.rpm && sudo yum -y install /tmp/docker.rpm && rm -rf /tmp/docker.rpm \
	&& sudo usermod -aG docker vagrant && sudo systemctl start docker && sudo systemctl enable docker.service

wget https://github.com/docker/compose/releases/download/1.3.1/docker-compose-Linux-x86_64 -O /tmp/docker-compose \
	&& chmod +x /tmp/docker-compose && sudo chown root /tmp/docker-compose && sudo mv /tmp/docker-compose /usr/local/bin/


