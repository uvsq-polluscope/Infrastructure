# Infrastructure

## Prérequis
- Git
- Docker

## Mise en place
- Se positionner dans un dossier et taper la commande suivante en remplaçant URL_DU_DEPOT par l'URL du dépôt Github à cloner.
```
git clone URL_DU_DEPOT
``` 
Si cette commande ne fonctionne pas (problème de mot de passe ou autre), vous pouvez directement télécharger les dossiers depuis le dépot Github.

- Avant de pouvoir démarrer Docker compose, il faut créer un network qui sera utilisé pour la communication entre les différents containers.
```
docker network create mynetwork
``` 
- Vous devez maintenant vous placer dans le dossier Infrastructure, il doit contenir docker-compose.yml qui correspond à la configuration que l'on va utiliser, et lancer la commande ci-dessous. Celle-ci va télécharger les images requises et lancer les différents containers. Pour ceux qui sont sur Windows ou Mac vous pouvez utiliser Docker Desktop qui permet d'avoir une interface plus simple d'utilisation.
```
docker-compose up
``` 
Après quelques secondes/minutes d'attente, vous devriez pouvoir accéder à la page KafkaUI, qui permet d'administrer Kafka depuis une interface web. 

La page est disponible à l'adresse [http://127.0.0.1:9000](http://127.0.0.1:9000), on peut par exemple gérer les topics et les connecteurs.

Vous avez maintenant une infrastructure Kafka fonctionnelle !

*A compléter lors des futures évolutions...*
