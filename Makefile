
jupyter:
	docker run --rm -it -p 8888:8888 -v "$$(pwd)":/app data-mining jupyter notebook --allow-root --ip 0.0.0.0

run_docker: SHELL:=/bin/bash
run_docker:
	docker run -it -p 8888:8888 -v "$$(pwd)":/app data-mining

build:
	docker build -t data-mining .