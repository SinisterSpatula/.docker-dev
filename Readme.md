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
