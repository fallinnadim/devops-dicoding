# Command untuk melakukan build image dengan nama item-app dan tag v1 berdasarkan Dockerfile
docker build -t item-app:v1 .
# Command untuk melist semua docker image yang berada pada lokal
docker images
# Command untuk merubah namespace dan tag image menjadi format yang ditentukan sesuai platform (Dockerhub / Github Package)
docker tag item-app:v1 fallinnadim/item-app:v1