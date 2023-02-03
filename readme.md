# mstdn-traefik-swarm

## how to use

`~/docker`にダウンロードされます  
setup and deploy

```sh
curl -sf https://raw.githubusercontent.com/5ym/mstdn-traefik-swarm/main/init.sh | sh -s
# 出力された内容をmstdn/.env.productionに上書き
docker stack -c mstdn-compose.yml deploy mstdn
```
