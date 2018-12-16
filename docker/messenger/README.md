# Messenger

## Как запускать
```sh
# Запускаем месенджер
$ ./scripts/run.sh messenger
# Открываем http://<ip ВМ> для первичной настройки
```

## Как собрать образ
```sh
$ docker build -t dimastark/provider-vpn-server docker/vpn-server
$ docker push dimastark/provider-vpn-server
```
