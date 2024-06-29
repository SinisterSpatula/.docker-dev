# .docker-dev for NodeBB

### Install for development

```
git clone https://github.com/NodeBB/NodeBB.git -b v3.x
cd NodeBB
git clone https://github.com/SinisterSpatula/.docker-dev.git
git clone https://github.com/SinisterSpatula/plugins-nodebb.git
cd .docker-dev
docker-compose --profile redis up -d
```

Afterwards, visit https://localhost:4567 and complete the install.

Then: go into the container using `docker exec -it docker-dev-nodebb-1 bash` and run:

```
cd /usr/src/app/plugins
cd nodebb-plugin-avatargallery
npm link
cd ..
npm link nodebb-plugin-avatargallery
cd nodebb-plugin-herotheme
npm link
cd ..
npm link nodebb-plugin-herotheme
./nodebb build
```

This will create a symlink for each plugin in node_modules.

### Update NodeBB

first be sure to backup the mongo database.

```
docker-compose --profile redis stop
cd NodeBB
git fetch
(or to change versions use git checkout v3.x, then do a docker rebuild)
```
