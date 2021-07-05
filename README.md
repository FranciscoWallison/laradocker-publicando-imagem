
# Iniciando projeto


# Init Go
#### [Golang chicowall/codeeducation](https://cloud.docker.com/repository/docker/chicowall/codeeducation) 

# Ambiente de desenvolvimento com Laravel
#### [Nginx chicowall/nginx-laravel:v1](https://cloud.docker.com/repository/docker/chicowall/nginx-laravel)
#### [PHP-FPM chicowall/app-laravel:v1](https://cloud.docker.com/repository/docker/chicowall/laravel)
#### [Redis chicowall/redis-laravel:v1](https://cloud.docker.com/repository/docker/chicowall/redis-laravel)
#### [MySQL chicowall/db-laravel:v1](https://cloud.docker.com/repository/docker/chicowall/db-laravel)


## Nota mental
    ° No windows não consigo dar "CHMOD" no arquivo entrypoint.sh no diretorio 
    ".dokcer/entrypoint.sh", não acha o arquivo no container e container cai.
        ° Solução
            - Remover no arquivo ou comentar "./docker-compose.yaml" a 
                linha de "entrypoint:" do services "app:"
    ° No k8s mesma questão do entrypoint.sh do docker, mas quando sobe o service do nginx
    dar erro 500.
        ° Solução
            - Remover no arquivo ou comentar "./k8s/app/deployment.yaml" na alinha "command:" em spec:
            e containers:, na criação de container.
            - Quando o k8s criar o POD do "app" acessar o bash e rodar o comando "ln -s /var/www /usr/share/nginx".
            - Quando o k8s criar o POD do "app", caso der erro de acesso ao banco "laravel", acessar conforme criado
                a senha para o mysql e dar um "create database laravel".
