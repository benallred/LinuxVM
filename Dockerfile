from alpine

run apk add --no-cache \
	bash \
	git \
	vim \
	curl \
	docker \
	openjdk8

copy .bashrc /root/.bashrc

cmd ["/bin/bash"]
