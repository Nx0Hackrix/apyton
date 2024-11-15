#-- Instrucciones GIT --#
git init
git add .
git commit -m "Primera versión de la API con Dockerfile"
git branch -M main
git remote add origin https://github.com/TU_USUARIO/TU_REPOSITORIO.git
git push -u origin main

#-- Instrucciones Docker --#
#Construir Imagen Docker:
docker build -t apyton .

#Ejecutar basado en la imagen Docker:
docker run -d --name nombre-contenedor -p 8000:8000 apyton

#Detener API del contenedor
docker stop nombre-contenedor

#Etiquetar la imagen a Docker
docker tag apyton:latest <TU_USUARIO>/apyton:latest

#Subir la imagen a Docker
docker push <TU_USUARIO>/apyton:latest

