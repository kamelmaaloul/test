

## À Propos de Mon Projet Arbre

Mon Projet Arbre est un programme pour crer un ou plusieurs arbres et utiliser les operations connus.

## Caractéristiques

Utilise le programme pour la liaison de données

Trier et déplacer les éléments dans l'ensemble de l'arborescence

Empêcher les éléments d'accepter les nœuds enfants

## API Téléchargement de fichier d'arbre

Un API REST (un programme) , pour générer des fichiers textes de chaque arbre sauvegardé dans la base de données.

Il renvoie un fichier texte avec l'arbre


- URL

       api/get-tree/:id
- Method

        GET
- URL Params

        Required id=[integer]
- Data Params
       
       None
- Success Response:
        
        Code: 200
        Télécharger le fichier texte

-Error Response:

        Code: 200
        {"result":0,"message":"Arbre introuvable !"}


## Database Setup
Pour ecrire une base de données  pour sauvegarder les données saisies à partir de formulaire.
Supposons que vous ayez les connexions de base de données suivantes dans notre projet:  


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

SET AUTOCOMMIT = 0;

START TRANSACTION;

SET time_zone = "+00:00";


## Usage

Pour effectuer n'importe quelle opération sur un arbre Veuillez cliquer sur l'icône dans le coin supérieur droit  Un menu apparaît, sélectionnez l'opération à effectuer.

•	Ecrire un formulaire : pour entrer un nouvel arbre

cliquez sur le bouton : Ajouter un nouvel arbre





