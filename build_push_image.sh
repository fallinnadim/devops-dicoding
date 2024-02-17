# Command untuk melakukan build image dengan nama item-app dan tag v1 berdasarkan Dockerfile
docker build -t item-app:v1 .
# Command untuk melist semua docker image yang berada pada lokal
docker images
# Command untuk merubah namespace dan tag image menjadi format yang ditentukan sesuai platform (Dockerhub / Github Package)
docker tag item-app:v1 ghcr.io/fallinnadim/item-app:v1
# Command untuk login ke github container registry, disini digunakan ENV Variable dengan nama GITHUB_PAT (Personal Access Token)
echo $GITHUB_PAT | docker login ghcr.io -u fallinnadim --password-stdin
# Command untuk push image yang sudah dibuat ke github container registry
docker push ghcr.io/fallinnadim/item-app:v1