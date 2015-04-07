FROM ubuntu:14.04

RUN 	apt-get update -y && \
		apt-get install -y software-properties-common && \
    	apt-get update -y && \
	 	add-apt-repository -y ppa:mc3man/trusty-media && \
	 	apt-get update -y && \
	 	apt-get -y install \
	 		ffmpeg \
	 		git \
	 		imagemagick \
	 		libjpeg-dev \
	 		python \
	 		python2.7-dev \
	 		python-pip

RUN pip install Pillow

RUN git clone https://github.com/agermanidis/SnapchatBot

WORKDIR /SnapchatBot

RUN python setup.py install

ENTRYPOINT ["python"]