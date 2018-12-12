# Messenger

## Как запускать
```sh
# Запускаем месенджер на 80 порту
$ ./scripts/run.sh messenger -p 80 -d
# Открываем http://<ip ВМ> для первичной настройки
```

## Как смотреть логи
```sh
# Смотрим логи мессенджера
$ docker logs -f messenger
# Смотрим логи базы данных мессенджера
$ docker logs -f messenger-db
```

## Как собрать образ
```sh
$ docker build -t repo/provider-vpn-server docker/vpn-server
$ docker push repo/provider-vpn-server
```
