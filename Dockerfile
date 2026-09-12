FROM ubuntu
#Utilizamos uma imagem ubuntu (ultima disponivel)

#Atualizamos o local system, instalamos o python 3
RUN apt-get update && apt-get install -y \
	python3 \
	python3-pip