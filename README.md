# docker-zookeeper

## Build

	docker build -t vantriet/zookeeper .

## Run

	CID=$(docker run -dit vantriet/zookeeper);

## Test

	docker ps --no-trunc
	docker exec -it $CID bin/zkCli.sh create /test :P
	docker exec -it $CID bin/zkCli.sh get /test
	docker exec -it $CID bin/zkCli.sh rmr /test

## Replicated mode

//TODO

## Disclaimer

Fit for no purpose

