# jitsi-swarm

compose file of jitsi for docker swarm(use traefik)
# How to use

1. get .env
```sh
curl https://raw.githubusercontent.com/jitsi/docker-jitsi-meet/master/env.example > jitsi/.env
```
2. change this env
  - HTTP_PORT=80
  - HTTPS_PORT=443
  - PUBLIC_URL=https://example.test
  - XMPP_SERVER=prosody
  - XMPP_BOSH_URL_BASE=http://prosody:5280
4. get script
```sh
curl https://raw.githubusercontent.com/jitsi/docker-jitsi-meet/master/gen-passwords.sh > jitsi/gen-passwords.sh
```
5. generate secret
```sh
./jitsi/gen-passwords.sh
```
6. deploy swarm
```sh
docker stack deploy --with-registry-auth -c jitsi-compose.yml jitsi
```
