FROM ubuntu:12.04

# Maintainer 
MAINTAINER Stephen Newhouse stephen.j.newhouse@gmail.com

# Set environment variables.
ENV HOME /home
ENV DEBIAN_FRONTEND noninteractive

# Update
RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y \
	apt-utils \
	automake \
	ant \
	bash \
	binutils \
	perl \
	bioperl \
	build-essential \
	bzip2 \
	c++11 \
 	cdbs \
	cmake \
	cron \
	curl \
	dkms \
	dpkg-dev \
	g++ \
	gpp \
	gcc \
	gfortran \
	git \
	git-core \
	libblas-dev \
	libatlas-dev \
	libbz2-dev \
	liblzma-dev \
	libpcre3-dev \
	libreadline-dev \
	make \
	mercurial \
	php5-curl \
	python python-dev python-yaml ncurses-dev zlib1g-dev python-numpy python-pip \
	sudo \
	subversion \
	tabix \
	tree \
	unzip \
	vim \
	wget \
	python-software-properties \
	libc-bin \
	llvm libconfig-dev \
	ncurses-dev \
	zlib1g-dev \
	yum \
	libX11-dev libXpm-dev libXft-dev libXext-dev \
	asciidoc

# get surpi code and install
RUN mkdir /home/ngsuser && \
	groupadd -r ngsuser && \
	useradd -r -g ngsuser ngsuser

RUN cd /home/ngsuser && \
	git clone https://github.com/chiulab/surpi.git && \
	chmod -R 775 surpi && \ 
	cd surpi/installers && \
	./SURPI_setup.sh


# open ports private only
EXPOSE 8080

# Use baseimage-docker's bash.
CMD ["/bin/bash"]

WORKDIR /home/ngsuser

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN apt-get autoclean && apt-get autoremove -y && rm -rf /var/lib/{apt,dpkg,cache,log}/

