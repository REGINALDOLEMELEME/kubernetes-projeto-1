# kubernetes-projeto-1

Deploy realizado através do uso do Google Cloud Platform.

Backend em PHP

Banco de Dados - Mysql

Foram gerados os dockerfile  do back-end e database;
Em seguida o arquivo service.yml para subir os serviços de conexão com o PHP (loadbalancer) e com o banco de dados;
A seguir foi gerado o arquivo para deployment, em que foi subido um banco de dados em um pod, e 6 para a aplicação.
Enfim, gerou-se o script.sh o qual foi responsável por Criar as imagens, fazendo upload das imagens, Criar os serviços no cluster Kubernetes e Realizar o Deployment
