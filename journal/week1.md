# Week 1 — App Containerization


### Cloned the repo to local environment.

```
git clone git@github.com:adarshjhaa100/aws-bootcamp-cruddur-2023.git
```

### Exploring the Source Code

#### Explored the backend repo:

Run the flask app using host and port:

```
flask run --host=127.0.0.1 --port=4567

```
Encountered an error where python wasn't able to find the cors origins.

Set the environment variables: FRONTEND_URL, BACKEND_URL


#### Exploring the FrontEnd Repo:

Tried running the UI application locally. Not able to run due to node version issue. Ugraded the the node version to 16.18 using :

```
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash - &&\
sudo apt-get install -y nodejs
```

Was finally able to run the frontend app on port 3000, using:

```
npm start
```


There seems to be a problem, Noticed REACT_APP_BACKEND_URL as undefined in the UI, set the value just before calling npm start:

```
REACT_APP_BACKEND_URL = "127.0.0.1:4567" npm start
```

### Running on Gitpod 
Cloned the repo to gitpod workspace (using the gitpod button present in the github repo) and tried to run them locally.

Frontend was running on : 4567
Backend was running on : 3000 

These ports are not fixed and can be modified by changing the configurations and run parameters.

### Containerizing The applications

#### flask backend

Ensure that requirements.txt contains flask and flask-cors.

Dockerfile used the slim buster version of python as the base image.

To build the docker image, following command was used:

```
docker build -t . backend-flask:0.1
```

To run the image, I used:
```
docker run \
--rm -p 4567:4567 \
-e FRONTEND_URL="*" \
-e BACKEND_URL="*" \
-e PORT=4567 \
-it -d backend-flask:0.1
```
Note: --rm : removes the container once its closed, -e is used to declare env variables, -d is used to run container in backgroud returning a container ID


#### Viewing logs

On running the container, the API was unaccesible from the localhost. So, I viewed the container logs from the console:

```
docker logs $CONTAINER_ID
```
the container_id can be obtainer while running the docker run command, or using:

```
docker ps
```

Which gives the container logs






Similarly, to run frontend image:

```
docker run \
--rm -p 3000:3000 \
-e REACT_APP_BACKEND_URL="http://127.0.0.1:4567" \
-e PORT=3000 \
-it -d frontend-react:v0.1
```

Run Shell Scrip inside container:
```
docker exec -it intelligent_ishizaka /bin/sh
```



### Docker Compose

using the docker-compose file from the instructions, encountered the issue of frontend getting closed automatically, so checked the logs for the frontend container:

```
docker container logs 787977dae850
```
here, 787977dae850 is the container ID of the frontend container.

Found the following logs:
```

> frontend@0.1.0 start
> react-scripts start

sh: 1: react-scripts: not found

> frontend@0.1.0 start
> react-scripts start

sh: 1: react-scripts: not found

```

Apparently the volume defined in the docker-compose.yml was causing the issue:

```
   volumes:
      - ./frontend-react-js:/frontend-react-js
```

Also, the docker-compose file has been modified a bit to pull in prebuilt images instead of building using compose-up. Just replace the build argument with image, e.g. in frontend:

```
image: frontent-react-js:v0.2
```
here, frontent-react-js is the container image for the frontend react project







