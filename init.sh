#!/bin/sh

mkdir -p mstdn/db mstdn/redis mstdn/system
curl https://raw.githubusercontent.com/mastodon/mastodon/main/.env.production.sample > mstdn/.env.production
curl -O https://raw.githubusercontent.com/5ym/mstdn-traefik-swarm/main/mstdn-compose.yml
echo 'customize compose file'
sleep 5
vim mstdn-compose.yml
echo 'setup env file'
docker compose -f mstdn-compose.yml up -d db redis
docker compose -f mstdn-compose.yml run --rm mstdn bundle exec rake mastodon:setup
docker compose -f mstdn-compose.yml down
