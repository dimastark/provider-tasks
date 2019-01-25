# Почтовый сервер

## Как запускать

```sh
# Запускаем Почтовый сервер
$ ./scripts/run.sh mail-server
```

## Как собрать образ

```sh
$ docker build -t dimastark/provider-mail-server docker/mail-server
$ docker push dimastark/provider-mail-server
```
