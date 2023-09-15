build:
	v -o vhelloworld main.v
	./vhelloworld

docker:
	docker build -t zwindler/vhelloworld:latest .
	docker push zwindler/vhelloworld:latest

run:
	docker run -p 8081:8081 zwindler/vhelloworld
