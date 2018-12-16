# Database

## Как запускать
```sh
# Запускаем базу данных и административный интерфейс
./scripts/run.sh database -d
# Открываем http://<ip ВМ>:5050 для первичной настройки
```

## Как смотреть логи
```sh
# Смотрим логи базы данных
$ docker logs -f database
# Смотрим логи административного сервера
$ docker logs -f pgadmin
```

## Как собрать образ
```sh
$ docker build -t repo/provider-database docker/database
$ docker push repo/provider-database
```
