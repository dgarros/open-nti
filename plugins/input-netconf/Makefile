

PWD = $(shell pwd)

build:
	docker build -t juniper/open-nti-input-netconf .

run:
	docker run -t -i -v $(PWD):/data juniper/open-nti /usr/bin/python /data/open-nti.py -c -s 
