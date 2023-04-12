#!/bin/sh

mkdir -p jitsi/web jitsi/transcripts jitsi/prosody/config jitsi/prosody/prosody-plugins-custom jitsi/jicofo jitsi/jvb
curl https://raw.githubusercontent.com/jitsi/docker-jitsi-meet/master/env.example > jitsi/.env
curl https://raw.githubusercontent.com/jitsi/docker-jitsi-meet/master/gen-passwords.sh > jitsi/gen-passwords.sh
chmod +x jitsi/gen-passwords.sh
./jitsi/gen-passwords.sh
