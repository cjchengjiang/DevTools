#bin/sh

env=$1
env_path=$1

if [ $env = "pl" ];
then
  env_path='qa'
fi

npm run build-${env_path}


### node
cd ${gitlab_path}/saas-fe-retail-node
git stash
git checkout ${env}
git pull
cp ${gitlab_path}/saas-fe-retail-react/build/index.ejs ${gitlab_path}/saas-fe-retail-node/public
git add .
git commit -m "微商城${env}打包"

### static resource
cd ${gitlab_path}/weimob-dev-static
git stash
git pull
cp -rf ${gitlab_path}/saas-fe-retail-react/build/static/ ${gitlab_path}/weimob-dev-static/saas/retail/${env_path}/static
git add .
git commit -m "微商城${env}打包"

echo 'done'