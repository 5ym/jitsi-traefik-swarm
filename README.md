# jitsi-swarm

compose file of jitsi for docker swarm(use traefik)
# How to use

1. setup
```sh
curl -sf https://raw.githubusercontent.com/5ym/jitsi-traefik-swarm/main/init.sh | sh -s
```
2. customize this line
```env
  - HTTP_PORT=80
  - HTTPS_PORT=443
  - PUBLIC_URL=https://example.test
  - XMPP_SERVER=prosody
  - XMPP_BOSH_URL_BASE=http://prosody:5280
```
6. deploy swarm
```sh
docker stack deploy --with-registry-auth -c jitsi-compose.yml jitsi
```
