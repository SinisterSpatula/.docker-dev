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

Afterwards, go into the container using `docker exec -it docker-dev-nodebb-1 bash` and run:

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
