
FROM nodered/node-red:4.0

# Installer les modules nécessaires
RUN npm install     uibuilder     node-red-contrib-web-worldmap     jsonwebtoken

# Copier les flows
COPY flows.json /data/flows.json
COPY settings.js /data/settings.js
