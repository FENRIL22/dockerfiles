all:
	@echo "Help:"
	@echo "Usage:"
	@echo "Init/Update"
	@echo "tool"

init:
	docker build ./base/ -t fenril22/gentoo-opt

gc:
	@echo "Working Progress"
	bash -c "cat <(docker images) | grep "none" | echo"

update:
	docker build  --no-cache=true ./base/ -t fenril22/gentoo-opt

pantex:
	make init
	docker build ./tools/pantex/ -t fenril22/gentoo-pantex

thirdpt-pantex:
	git clone https://github.com/k1low/docker-alpine-pandoc-ja
	(cd docker-alpine-pandoc-ja; docker build . -t thirdpt/pandoc-latex)

