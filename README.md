# nlp-class
An Environment for nlp class with Docker.

## how to start
At first, clone this repository at your local environment.
And then, move to repository dir.

build container
```
$ docker-compose build
```
wake up container 
```
$ docker-compose up -d
```
connect to the container environment
```
$ docker-compose exec nlp-env /bin/bash
```
