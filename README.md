# 📚 MangaCollecScrap

**MangaCollecScrap** est un système modulaire basé sur **Python**, **Celery** et **Docker**, conçu pour interagir avec l'API de MangaCollec afin de collecter automatiquement des données sur les séries de mangas.

---

## ❓ Pourquoi ?

Le but de ce projet est de récupérer des informations sur des séries de mangas grâce à l’API de MangaCollec, afin de constituer un dataset qui servira à entraîner une IA.

🎯 **Objectif final :** prédire les séries qui risquent de tomber en arrêt de commercialisation faute de succès — pour pouvoir les acheter avant qu’elles ne deviennent introuvables.

> 🛑 **Ce projet est strictement personnel** et ne vise **aucune commercialisation**.

---

## 📦 Sous-modules

- [`manager`](./manager/README.md) : Interface principale pour préparer et planifier les tâches à envoyer au worker.
- [`worker`](./README.md) : Worker Celery qui exécute les tâches asynchrones (scraping, traitement, etc.).

---

## 🛠️ Technologies utilisées

- 🐍 **Python** — parce que c’est le meilleur langage, évidemment ^^
- ⚙️ **Celery** — gestion simple et puissante des tâches distribuées.
- 🐇 **RabbitMQ** — broker de message entre le manager et les workers.
- 🐘 **PostgreSQL** — base de données pour stocker les résultats.
- 📊 **Pandas** — manipulation efficace des datasets.
- 🌸 **Flower** — visualisation de l’état des workers Celery.

---

## 🚀 Démarrage rapide

### ✅ Prérequis

- Docker & Docker Compose
- Make (optionnel, mais pratique)

---

### 🐳 Lancer tout le projet

``` bash
make docker-up
```

###  Lancement Manager

``` bash
make manager
```

###  Lancement Worker

``` bash
make worker 
```