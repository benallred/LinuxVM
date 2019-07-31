from alpine

run apk add --no-cache \
	bash \
	git \
	vim \
	curl \
	docker \
	openjdk8

run git clone https://github.com/benallred/configs.git ~/configs && \
	git config --global --add include.path ~/configs/git/ben.gitconfig

copy .bashrc /root/.bashrc

cmd ["/bin/bash"]
