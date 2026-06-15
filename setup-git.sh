#!/bin/bash
# ─────────────────────────────────────────────────────────────
#  NACE Capital — Push vers GitHub
#  Usage : bash setup-git.sh
# ─────────────────────────────────────────────────────────────
set -e
cd "$(dirname "$0")"

echo ""
echo "══════════════════════════════════════"
echo "  NACE Capital → GitHub Pages"
echo "══════════════════════════════════════"

# 1. Nettoyer un éventuel dépôt git cassé
echo ""
echo "▶ Nettoyage du dépôt git précédent..."
rm -rf .git

# 2. Initialisation
echo "▶ Initialisation du dépôt git..."
git init
git config user.email "stephane.marguier@nace-capital.com"
git config user.name "Stephane Marguier"

# 3. Ajout de tous les fichiers
echo "▶ Ajout des fichiers..."
git add -A
git commit -m "Initial commit — NACE Capital website"

# 4. Connexion à GitHub et push
echo "▶ Connexion à GitHub..."
git remote add origin https://github.com/MARGUIER75/nace-capital.com.git
git branch -M main

echo ""
echo "▶ Push vers GitHub (saisir token si demandé)..."
git push -u origin main

echo ""
echo "══════════════════════════════════════"
echo "  ✅ Push terminé !"
echo ""
echo "  PROCHAINES ÉTAPES :"
echo "  1. github.com/MARGUIER75/nace-capital.com"
echo "     → Settings → Pages"
echo "     → Source : Deploy from a branch"
echo "     → Branch : main  /  Folder : / (root)"
echo "     → Save"
echo ""
echo "  2. Custom domain : www.nace-capital.com"
echo "     → Enforce HTTPS ✓"
echo ""
echo "  3. DNS chez IONOS — ajouter :"
echo "     A  @  185.199.108.153"
echo "     A  @  185.199.109.153"
echo "     A  @  185.199.110.153"
echo "     A  @  185.199.111.153"
echo "     CNAME  www  MARGUIER75.github.io."
echo "══════════════════════════════════════"
