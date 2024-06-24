# Setup local dev

## start docker container

```bash

docker run -dt -v D:/code:/home/kicad/code -p 7676:7676 -p 8989:8989 -p 8012:8012 ghcr.io/huaqiu-electronics/kicad:lite

docker exec -it d6e431dea8d5 bash

```

## setup dev

```bash

sudo sh -c 'echo "deb http://mirrors.tuna.tsinghua.edu.cn/debian sid main" > /etc/apt/sources.list'
sudo apt-get update

```

## build viewer

```bash
sudo sh -c 'curl -fsSL https://deb.nodesource.com/setup_20.x | bash - '
sudo apt-get install -y nodejs
npm config set registry https://registry.npm.taobao.org
cd /home/kicad/code/ecad-viewer
npm install
npm run build

```

## start server

```bash

docker exec -it bdcc89bd02d3 /app/scripts/start_all.sh

```
