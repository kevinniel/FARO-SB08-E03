# Docker

## Lancer un conteneur apache
`-d` : lancer le conteneur en tâche de fond

```
docker run -d httpd
```

## Voir les conteneurs

```
docker ps
```

## Arrêter un conteneur

```
docker stop <id>
```

Si vous connaissez le nom de votre container, vous pouvez aussi : 
```
docker stop <votre_nom>
```

## Donner un nom au conteneur

On ajoute le `--name <votre_nom>`

```
docker run -d --name oclock httpd
```

## Lancer un conteneur apache et l'exposer pour y accéder sur la machine hôte

```
docker run -d -p 8001:80 --name apache httpd
docker run -d -p <port_machine_hote>:<port_container> --name <nom_container> <image>
```

## Voir tous les containeurs, même les arrêtés

```
docker ps -a
```

## Supprimer un container

```
docker rm <id>
docker rm <nom_du_container>
```

Pour forcer la suppression, meme d'un conteneur en exécution, ajouter l'option `-f` pour "force".

```
docker rm -f <id>
docker rm -f <nom_du_container>
```

## Arrêter ou démarrer un container

Pour arrêter ou démarrer un conteneur, vous devez l'avoir instancié avec `docker run`.

Pour arrêter : 

```
docker stop <nom>
docker stop <id>
```

Pour démarrer :

```
docker start <nom>
docker start <id>
```

## Voir les images téléchargées

```
docker images
```


## Supprimer une image

```
docker image rm <nom>
```

## Pour faire le ménage

```
docker system prune
```

## Pour build une image à partir d'un dockerfile

Il faut que le dockerfile soit à la racine du projet

```
docker build . -t <nom_de_l_image>
```
