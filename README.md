# data-science-py
Docker configuration for Data Science with Python


## First of all
* Read ALL README.md file
* Clone a project pipeline repository into the src/ directory
* Configure the .env file, see the example.env file and save copy with name .env
* There are two enviroment work flow:
  - Develop
  - Production


#### Flow Work to Develop Enviroment
* Build Docker Image Only Once
```bash
$ ./build.sh
```
* Run Docker Container
```bash
$ ./run.sh
```
* Run Docker Container (ONLY ON WINDOWS see PWD_WINDOWS in example.env file)
```bash
$ ./run.sh W
```
* Run Shell into Docker Container
```bash
$ ./shell.sh
```


#### Flow Work to Production Enviroment (FUTURE WORK)
* ...
* ...


#### Build Container
###### See example.env file
###### See build.sh script file
```bash
$ docker build $(for i in `cat .env | grep -v '#'`; do out+="--build-arg $i " ; done; echo $out;out="") -t sebaxtian/data-science-py:1.0.0 .
```

#### Run Container
###### See example.env file
###### See run.sh script file
```bash
$ docker run -it --name data-science-py --env-file $PWD/.env -v $PWD/src/$DIR_APP:/home/python/src -p $PORT_APP:$PORT_APP sebaxtian/data-science-py:1.0.0
```

#### Start Container
```bash
$ docker start data-science-py
```

#### See logs Container
```bash
$ docker logs data-science-py
```

#### Restart Container
```bash
$ docker restart data-science-py
```

#### Shell in Container
###### See shell.sh script file
```bash
$ docker exec -it data-science-py bash
```

#### Erase Container
```bash
$ docker rm data-science-py
```

#### Erase Container Image
```bash
$ docker image rm sebaxtian/data-science-py:1.0.0
```

#### Docker Commands

* List Docker images
```bash
$ docker image ls
```

* List Docker containers (running, all, all in quiet mode)
```bash
$ docker container ls
$ docker container ls --all
$ docker container ls -aq
```
