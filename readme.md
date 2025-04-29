# 🎉 Kin Events – Plateforme des Événements à Kinshasa 🇨🇩

**Kin Events** est une plateforme web pour découvrir, réserver et gérer des événements à Kinshasa (concerts, festivals, soirées...). Ce dépôt est destiné à la collaboration pour développer des fonctionnalités **frontend** et **backend** à venir.

---

## 🖥️ FRONTEND – Fonctionnalités à développer

### ✅ Authentification
- [ ] **Page d'inscription** (nom, email, mot de passe)
- [ ] **Page de connexion/déconnexion**
- [ ] Affichage de l’**avatar de l’utilisateur** connecté à droite du menu hamburger
- [ ] Ajout du **logo** Kin Events dans la navbar

### ✅ Abonnements Premium
- [ ] Page d'abonnement avec 3 offres :
  - **Standard** (accès simple aux billets)
  - **Premium** (réductions -15%)
  - **VIP** (réductions -25% + accès prioritaire)
- [ ] Affichage dynamique des avantages selon le plan choisi

### ✅ Interface utilisateur
- [ ] Responsive Design avec **Tailwind CSS**
- [ ] Composants UI réutilisables : boutons, modales, cartes d’événements

---

## 🛠️ BACKEND – Fonctionnalités principales

### ✅ Gestion Utilisateurs
- [ ] Inscription et connexion sécurisée (hash, sessions/JWT)
- [ ] Déconnexion et vérification d’identité
- [ ] Rôles : `utilisateur`, `admin`

### ✅ Billetterie Électronique
- [ ] Génération automatique d’un **QR Code** unique pour chaque billet acheté
- [ ] Gestion des billets selon le plan choisi (Standard / Premium / VIP)
- [ ] Envoi du billet par email avec le QR Code

### ✅ Panel Admin
- [ ] Interface de gestion pour :
  - Ajouter / modifier / supprimer des événements
  - Voir les inscrits par événement
  - Filtrer les utilisateurs par abonnement
- [ ] Statistiques en temps réel (nombre de réservations, utilisateurs premium, etc.)

---

## 🧪 Tech Stack proposée

| Frontend | Backend |
|----------|---------|
| HTML / Tailwind CSS 
| Formspree / Email.js (formulaire) | MySQL  |
| QR Code API / QRCode.js | JWT Auth / Bcrypt |

---

---

## 👥 Collaborateurs

Ajoutez-vous ici avec ce format :

- 👤 **Lucas (Admin)** – Développeur Fullstack / Designer  
- 👤 **Aaron (front)** – Développeur Fullstack / Designer
- 👤 **Espoir (backend)** – Développeur Fullstack / Designer

---

## 📌 Instructions de contribution

1. Clonez le repo
2. Créez une branche avec votre nom
3. Faites vos changements puis ouvrez une Pull Request
4. Les commits doivent être clairs :  
   `feat: ajout de la page abonnement`  
   `fix: correction navbar mobile`

---

## 📨 Contact

📧 cmklucas99@gmail.com  
📍 Kinshasa, RDC

---

> Merci de respecter la structure et de collaborer efficacement.  
> Kin Events a pour but de **révolutionner les sorties et événements en RDC** ! 🚀

---

## 📝 Licence

MIT License

Copyright (c) 2025 Lucas

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE  
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER  
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,  
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE  
SOFTWARE.
