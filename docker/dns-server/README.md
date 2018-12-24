# DNS Server

## Как запускать
```sh
# Запускаем DNS сервер
$ ./scripts/run.sh dns-server
# Открываем https://<ip ВМ> для первичной настройки (root:password)
```

## Как собрать образ
```sh
$ docker build -t dimastark/provider-dns-server docker/dns-server
$ docker push dimastark/provider-dns-server
```
