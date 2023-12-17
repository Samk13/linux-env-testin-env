.PHONY: run

run:
	# docker build --no-cache -t toolbox:latest -f Dockerfile .
	docker build -t toolbox:latest -f Dockerfile .
	docker run -it toolbox:latest /bin/bash