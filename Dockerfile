FROM debian

WORKDIR /binwalk

RUN apt-get update

RUN apt-get install -y \
	build-essential \
	liblzma-dev \
	liblzo2-dev \
	zlib1g-dev \
	wget \
	python3 \
	python3-setuptools \
	mtd-utils \
	gzip \
	bzip2 \
	tar \
	arj \
	lhasa \
	p7zip \
	p7zip-full \
	cabextract \
	squashfs-tools \
	sleuthkit \
	default-jdk \
	lzop \
	srecord \
	git

RUN git clone https://github.com/devttys0/binwalk.git && \
	cd binwalk && \
	python3 setup.py install && \
	cd /

RUN git clone https://github.com/devttys0/sasquatch && \
	cd sasquatch && \
	CFLAGS=-fcommon ./build.sh

ENTRYPOINT ["/usr/local/bin/binwalk"]
