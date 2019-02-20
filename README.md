# Simple online shopping webapp with Nodejs and Mongodb

Simple online shopping webapp with Nodejs and Mongodb



This project is based on these materials:
* Course:  [Introduction to MongoDB using the MEAN Stack (edX)](https://www.mooc-list.com/course/introduction-mongodb-using-mean-stack-edx)
* Youtube: [MEAN stack App](https://www.youtube.com/watch?v=wtIvu085uU0)

# Installation

## Node v0.12.x
```bash
curl https://raw.githubusercontent.com/creationix/nvm/v0.24.1/install.sh | bash
source ~/.nvm/nvm.sh
nvm install 0.12
nvm use 0.12
```

## NPM global dependencies
```bash
# Bower
npm install -g bower

# Grunt CLI
npm install -g grunt-cli

# Yeaoman
npm install -g yo

# Angular fullstack generators
npm install -g generator-angular-fullstack@3.0.0-rc4
```

## Sass dependencies
```
gem install sass
```

## MongoDB v3.x

- Mac: `brew install mongodb 3.0.2`
- Ubuntu: `sudo apt-get -y install mongodb=3.0.2`

# Usage
  - run server (dev mode): `grunt serve`
  - run server (production mode): `grunt serve:dist`
  - run tests: `grunt test`
  - run e2e tests: `grunt test:e2e`
  - compile assets: `grunt build`

# Docker
After installing docker programs, go to the terminal:

```bash
# make sure docker is available
docker --version
docker-compose --version

# start docker daemons
docker-machine ls
docker-machine start default
eval "$(docker-machine env default)"

# create VMs 
docker-compose build

# run the app
docker-compose up -d

# get ip of the VM
docker-machine ip

# open browser with running app on http://192.168.99.100:7000
open http://$(docker-machine ip):7000 # only OS X

# List containers
docker-compose ps

# Run commands in containers (e.g. database container)
docker exec -it meanshop_db_1 bash

# View logs
docker-compose logs # or docker-compose logs web # or docker-compose logs db

# Stop services
docker-compose stop

# Remove stopped containers
docker-compose rm
```
