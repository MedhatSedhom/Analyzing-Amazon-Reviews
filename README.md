# Introduction
- This project contains two directories. One for brown clustering and one for LDA. The projects requires python3 > 3.8.0
- Each project has its dependencies in the requirements.txt
- It's recommended  to run the project using docker to have consistent results across all the environments.
- Another option is to use google-celebratory.

## Brown Clustering:
- The brown clustering project has a dependency on https://github.com/percyliang/brown-cluster. The dependency is written in C++, and it requires compiling for the target operating system and processor architecture before use.

## LDA
- The LDA project has a dependency on LDA mallet and requires java 8.

# How to run

## clear docker cache if there are errors
`sudo docker system prune -af`

## Linux (ubuntu):
- get docker
```sh
sudo apt-get update -y
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo docker run hello-world
sudo systemctl enable docker
```
Go to the LDA directory and excute these docker commands

```sh
sudo docker rm --force lda_clustering
sudo docker build -t lda_clustering . 
sudo docker run --name lda_clustering -it -p 8888:8888 lda_clustering
```
Go to the BrownClustering directory and excute these docker commands
```sh
sudo docker rm --force brown_clustering
sudo docker build -t brown_clustering .
sudo docker run --name brown_clustering -it -p 8888:8888 brown_clustering

```
# Another option is to use google-celebratory:
- LDA >> https://colab.research.google.com/drive/1MEUXg__TIlDZAW4pnmWeAPalcf4_atS7?usp=sharing
- Brown Clustering >> https://colab.research.google.com/drive/1HoUE0DqJG12Hyj5sQYApO7etziYk04rt?usp=sharing
```
