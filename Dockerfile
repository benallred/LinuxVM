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

#run nohup dockerd > /root/dockerd.log 2>&1 &

copy .bashrc /root/.bashrc
copy startup.sh /root/startup.sh

cmd ["/root/startup.sh"]
