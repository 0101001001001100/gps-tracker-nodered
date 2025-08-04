FROM nodered/node-red:4.0

# Créer le dossier /data et donner les droits à Node-RED
USER root
RUN mkdir -p /data && chown -R node-red:node-red /data

# Passer sur l'utilisateur Node-RED
USER node-red

# Installer les modules nécessaires
RUN npm install \
    node-red-contrib-web-worldmap \
    node-red-contrib-uibuilder \
    jsonwebtoken

# Copier les fichiers de configuration
COPY flows.json /data/flows.json
COPY settings.js /data/settings.js

# Dossier uibuilder
RUN mkdir -p /data/uibuilder/gpsmap

# Copier les fichiers de l’UI
COPY uibuilder/index.html /data/uibuilder/gpsmap/index.html
COPY uibuilder/index.css /data/uibuilder/gpsmap/index.css
COPY uibuilder/index.js /data/uibuilder/gpsmap/index.js
COPY uibuilder/script.js /data/uibuilder/gpsmap/script.js

# Port exposé pour Node-RED
EXPOSE 1880

# Commande de démarrage
CMD ["npm", "start", "--", "--userDir", "/data"]
