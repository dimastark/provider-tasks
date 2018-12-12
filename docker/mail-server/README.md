# Почтовый сервер

## Как запускать
```sh
# Устанавливаем переменные HOST и DOMAIN
$ export HOST=<ip ВМ>
$ export DOMAIN=<ip ВМ или домен>
# Запускаем Почтовый сервер
$ ./scripts/run.sh mail-server -e HOST=$HOST -e DOMAIN=$DOMAIN -p 25 -p 143 -p 587 -p 993 -d
```

## Как смотреть логи
```sh
# Смотрим логи почтового сервера
$ docker logs -f mail-server
```

## Как собрать образ
```sh
$ docker build -t repo/provider-mail-server docker/mail-server
$ docker push repo/provider-mail-server
```
