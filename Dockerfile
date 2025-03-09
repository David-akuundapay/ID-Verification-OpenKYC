# Utilisation de l'image Nginx officielle comme base
FROM nginx:latest

# Copie de vos fichiers statiques dans le répertoire de travail de Nginx
COPY ./admin /usr/share/nginx/html

# (Optionnel) Copie d'un fichier de configuration Nginx personnalisé
# COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# Exposition du port 80 pour accéder au serveur web
EXPOSE 4000

# Commande par défaut pour démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]
