# On part d'une image
# @see https://hub.docker.com/_/node
# Layer 1 (couche 1)
FROM node:20

# Répertoire de travail dans le conteneur
# Cette commande est équivalente à : 
#   mkdir /usr/src/app && cd /usr/src/app
WORKDIR /usr/src/app

# On copie les fichiers
# COPY <repertoire_courant_machine_hote> <repertoire_container>
# le repertoire_container à été défini au dessus avec WORKDIR
# COPY <repertoire_courant_machine_hote> </usr/src/app>
# Layer 2 (couche 2)
COPY . ./

# On installe les dépendances
# Layer 3 (couche 3)
RUN npm i

# On expose le port
EXPOSE 3000

# On lance l'application
CMD [ "node", "app.js" ]