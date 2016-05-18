# docker-zookeeper

## Build

	docker build -t vantriet/zookeeper .

## Run

	CID=$(docker run -dit vantriet/zookeeper);

## Test

	docker ps --no-trunc
	docker exec -it $CID /bin/bash
	
//TODO

## Replicated mode

//TODO

## Disclaimer

Fit for no purpose

