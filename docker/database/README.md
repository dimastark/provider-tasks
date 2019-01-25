# Database

## Как запускать

```sh
# Запускаем базу данных и административный интерфейс
./scripts/run.sh database
# Открываем http://<ip ВМ> для первичной настройки
```

## Как собрать образ

```sh
$ docker build -t dimastark/provider-database docker/database
$ docker push dimastark/provider-database
```
