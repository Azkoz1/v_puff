# 💨 Advanced Puff Script for FiveM

![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![Platform](https://img.shields.io/badge/platform-FiveM-orange.svg)

Un script léger et immersif pour ajouter des **Puffs (vapes jetables)** sur votre serveur FiveM. Ce script inclut des animations, des effets de particules de fumée et une gestion du nombre de bouffées (taffes) limitées.

## ✨ Caractéristiques

* **Système de taffes limité :** Chaque puff a une durée de vie définie. Une fois vide, elle devient inutilisable.
* **Animations immersives :** Le joueur porte la puff à la bouche avec une animation fluide.
* **Effets visuels (PTFX) :** Expulsion d'un nuage de fumée réaliste après chaque utilisation.
* **Optimisé :** Consommation de ressources minimale (0.00ms au repos).
* **Prêt pour GitHub :** Structure de dossiers propre et facile à installer.

## 🛠️ Installation

1.  Téléchargez le dépôt.
2.  Extrayez le dossier dans votre répertoire `resources` (renommez-le en `v_puff` par exemple).
3.  Ajoutez la ligne suivante à votre fichier `server.cfg` :
    ```lua
    ensure v_puff
    ```
4.  Relancez votre serveur ou démarrez la ressource manuellement via la console.

## 🚀 Utilisation

Par défaut, le script utilise une commande de test. Vous pouvez lier cela à un item d'inventaire facilement.

* **Commande :** `/usepuff`
* **Logique :** * Le joueur déclenche l'animation.
    * La fumée apparaît après 2 secondes.
    * Le compteur de taffes diminue dans la mémoire du serveur.

## ⚙️ Configuration (À venir)

Le script est actuellement en version "Standalone". Pour une intégration complète :
* **ESX :** Utilisez `ESX.RegisterUsableItem`.
* **QB-Core :** Utilisez `QBCore.Functions.CreateUseableItem`.

## 📂 Structure du projet

```text
.
├── client.lua      # Gestion des animations et particules
├── server.lua      # Logique de la base de données/taffes
├── fxmanifest.lua  # Métadonnées FiveM
└── README.md       # Documentation
