# data-science-py
Docker configuration for Data Science with Python

## Build Container
###### See example.env file

docker build --build-arg PYTHON_ENV=production --build-arg DIR_APP=example-app --build-arg PORT_APP=1988 -t sebaxtian/data-science-py:1.0.0 .

## Run Container
###### See example.env file

docker run --name data-science-py --env-file $PWD/.env -v $PWD/src/example-app:/home/python/src -p 1988:1988 -d sebaxtian/data-science-py:1.0.0

## Restart Container
docker restart data-science-py

## See logs Container
docker logs data-science-py

## Shell in Container
docker exec -it data-science-py bash
###### OR
docker exec -it data-science-py sh
###### OR
docker run -it --name data-science-py sebaxtian/data-science-py:1.0.0 sh
###### OR
docker run -it --name data-science-py sebaxtian/data-science-py:1.0.0 bash

## Erase Container
docker rm data-science-py

## Erase Container Image
docker image rm sebaxtian/data-science-py:1.0.0

## To test in a browse to ``http://localhost:1988/``
