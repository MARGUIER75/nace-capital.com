# Guide — Mettre en ligne sur GitHub Pages

Ce guide vous permet de remplacer votre hébergement IONOS par GitHub Pages (gratuit).  
Durée estimée : **10 minutes**.

---

## Étape 1 — Créer un compte GitHub (si vous n'en avez pas)

1. Allez sur [github.com](https://github.com)
2. Cliquez **Sign up** et créez un compte (gratuit)

---

## Étape 2 — Créer un dépôt

1. Connectez-vous à GitHub
2. Cliquez sur le **+** en haut à droite → **New repository**
3. Nommez-le exactement : `nace-capital.com`
4. Cochez **Public** (requis pour GitHub Pages gratuit)
5. Cliquez **Create repository**

---

## Étape 3 — Uploader les fichiers

1. Sur la page du dépôt, cliquez **uploading an existing file**
2. Glissez-déposez votre fichier `index.html` (et les autres fichiers si vous en avez)
3. Cliquez **Commit changes**

---

## Étape 4 — Activer GitHub Pages

1. Dans votre dépôt, allez dans **Settings** (onglet en haut)
2. Dans le menu gauche, cliquez **Pages**
3. Sous **Source**, sélectionnez **Deploy from a branch**
4. Branch : **main** / Folder : **/ (root)**
5. Cliquez **Save**

→ GitHub génère un lien du type `https://votrecompte.github.io/nace-capital.com/`  
→ Le site est déjà en ligne, mais sans votre domaine encore.

---

## Étape 5 — Connecter votre domaine nace-capital.com

### Chez IONOS (avant de résilier)
Allez dans la gestion DNS de votre domaine et ajoutez/modifiez ces enregistrements :

| Type  | Hôte | Valeur                  |
|-------|------|-------------------------|
| A     | @    | 185.199.108.153         |
| A     | @    | 185.199.109.153         |
| A     | @    | 185.199.110.153         |
| A     | @    | 185.199.111.153         |
| CNAME | www  | votrecompte.github.io.  |

> ⚠️ Remplacez `votrecompte` par votre nom d'utilisateur GitHub.

### Sur GitHub Pages
1. Dans **Settings → Pages**, renseignez le champ **Custom domain** : `www.nace-capital.com`
2. Cochez **Enforce HTTPS** (disponible après quelques minutes)

---

## Étape 6 — Créer le fichier CNAME

Dans votre dépôt GitHub, créez un fichier nommé `CNAME` (sans extension) contenant uniquement :
```
www.nace-capital.com
```

---

## Étape 7 — Résilier IONOS

Attendez que le domaine soit bien redirigé vers GitHub Pages (1 à 48h) **avant** de résilier l'abonnement hébergement IONOS.  
Conservez uniquement la gestion du nom de domaine si IONOS est votre registrar, ou transférez-le chez un autre registrar (ex : [Namecheap](https://namecheap.com), [Gandi](https://gandi.net) — ~10€/an).

---

## Formulaire de contact

Le site utilise **Formspree** (gratuit jusqu'à 50 messages/mois) pour le formulaire de contact.

1. Allez sur [formspree.io](https://formspree.io) et créez un compte
2. Créez un nouveau formulaire pour `contact@nace-capital.com`
3. Copiez votre **Form ID** (ex : `xpzgkwlb`)
4. Dans `index.html`, remplacez `YOUR_FORM_ID` par votre ID :
   ```
   action="https://formspree.io/f/xpzgkwlb"
   ```

---

## Résumé des coûts

| Poste              | Coût          |
|--------------------|---------------|
| GitHub Pages       | **0 €/mois**  |
| Formspree (50/mois)| **0 €/mois**  |
| Nom de domaine     | ~10 €/an      |
| **Total**          | **~10 €/an**  |

---

## Besoin d'aide ?

Contactez Claude en attachant ce guide et il vous guidera étape par étape.
