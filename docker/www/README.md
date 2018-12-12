# Web Server

## Как запускать
```sh
# Запускаем миграции                  <user>   <pass>   <ip ВМ с БД>
$ ./scripts/command.sh www www forum postgres postgres 192.168.20.138 -migrate
# Запускаем Web сервер и передаем переменные для подключения к БД
$ ./scripts/run.sh www -d -p 80 -e PG_HOST=<ip ВМ с БД> -e PG_USER=postgres -e PG_PASS=postgres
```

## Как создать суперпользователя
```sh
$ ./scripts/command.sh www www forum postgres postgres 192.168.20.138 -createsuperuser
```

## Как смотреть логи
```sh
# Смотрим логи Web сервера
$ docker logs -f www
```

## Как собрать образ
```sh
$ docker build -t repo/provider-www docker/www
$ docker push repo/provider-www
```
