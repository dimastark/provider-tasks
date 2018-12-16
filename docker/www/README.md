# Web Server

## Как запускать
```sh
# Запускаем миграции
$ ./scripts/command.sh www www forum postgres postgres <ip ВМ с БД> -migrate
# Запускаем Web сервер и передаем переменные для подключения к БД
$ ./scripts/run.sh www -e PG_HOST=<ip ВМ с БД> -e PG_USER=postgres -e PG_PASS=postgres
```

## Как создать суперпользователя
```sh
$ ./scripts/command.sh www www forum postgres postgres <ip ВМ с БД> -createsuperuser
```

## Как собрать образ
```sh
$ docker build -t dimastark/provider-www docker/www
$ docker push dimastark/provider-www
```
