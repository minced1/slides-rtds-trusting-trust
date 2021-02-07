compile:
	sltx raw-compile

show: compile
	pdfpc --windowed=both atvs-presentation.pdf

dependencies:
	sudo apt-get install cmake valac libgee-0.8-dev libpoppler-glib-dev \
		libgtk-3-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev \
		libjson-glib-dev libmarkdown2-dev libwebkit2gtk-4.0-dev libsoup2.4-dev \
		libqrencode-dev gstreamer1.0-gtk3

install-newest: dependencies
	wget https://github.com/pdfpc/pdfpc/archive/v4.5.0.tar.gz -P /tmp/pdfpc
	cd /tmp/pdfpc && tar -xvf v4.5.0.tar.gz
	cd /tmp/pdfpc/pdfpc-4.5.0
	mkdir /tmp/pdfpc/pdfpc-4.5.0/build/
	cd /tmp/pdfpc/pdfpc-4.5.0/build/ && cmake .. && make && sudo make install
