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

run mkdir /root/scala && \
	cd /root/scala && \
	curl https://downloads.lightbend.com/scala/2.13.1/scala-2.13.1.tgz --output scala-2.13.1.tgz && \
	tar -xf scala-2.13.1.tgz && \
	echo "PATH=\$PATH:/root/scala/scala-2.13.1/bin" >> /root/.bashrc

cmd ["/bin/bash"]
