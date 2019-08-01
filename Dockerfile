from alpine

run apk add --no-cache \
	bash \
	sudo \
	git \
	vim \
	curl \
	docker \
	docker-compose \
	openjdk8

run git clone https://github.com/benallred/configs.git ~/configs && \
	git config --global --add include.path ~/configs/git/ben.gitconfig

copy .bashrc /root/.bashrc

cmd ["/bin/bash"]
