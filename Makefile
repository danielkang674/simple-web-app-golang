build:
	docker build -t simple-web-app:latest .
run:
	docker run -it --rm -p 8080:8080 --mount type=bind,source="$(shell pwd)",target=/app simple-web-app
run-dev: build run
cdaemon:
	CompileDaemon -build="go build wiki.go" -command="./wiki"