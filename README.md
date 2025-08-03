# gps-tracker-nodered
Suivi GPS en temps réel avec Node-RED, affichage sur carte interactive, données envoyées depuis Traccar.
# GPS Tracker Node-RED

Ce projet open source permet d'afficher en temps réel la position GPS d'un utilisateur ou d’un véhicule (ex. : vélo cargo) sur une carte interactive via Node-RED.

## Fonctionnalités

- Réception des données GPS via Traccar (mode HTTP)
- Affichage dynamique sur carte Leaflet (Worldmap)
- Interface web sécurisée (authentification en option)
- Génération et validation de token temporaire (optionnel)
- Hébergement compatible avec Render, Docker, et GitHub

## Technologies utilisées

- [Node-RED](https://nodered.org/)
- [Traccar Client](https://www.traccar.org/client/)
- Leaflet (via `node-red-contrib-web-worldmap`)
- Docker & GitHub pour déploiement
- Authentification par token HMAC SHA256

## Objectif

Ce projet a été initialement conçu pour un usage professionnel par un coursier à vélo cargo afin de permettre aux clients de suivre en direct l’arrivée de leur livraison.

## Démo en ligne

🔗 [https://status.raphael-leroi.fr](https://status.raphael-leroi.fr) *(si actif)*

---

## Licence

MIT – Libre d'utilisation et de modification.

## Auteur

Raphaël Leroi – Paris  
