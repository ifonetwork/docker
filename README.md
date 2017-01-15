### Docker
Docker configuration for projects

### Contains 
NGINX +  PHP-5.6-FPM +  MYSQL + MONGODB

### Install Docker.
```
git  clone https://github.com/ifonetwork/docker.git
cd docker
docker-compose -f nginx-php5-mysql-mongo.yml up

```

### Attention
Installed MongoDB PHP extension from PECL, but Yii2  has issue:  use mongo-ext that deprecated.
Add
```
"mongofill/mongofill": "dev-master" 

```
to composer.json, and use composer  install  --ignore-platform-reqs