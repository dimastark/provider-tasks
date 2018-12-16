# DNS Server

## Как запускать
```sh
# Останавливаем systemd-resolved (освобождаем 53 порт)
$ sudo systemctl stop systemd-resolved
# Запускаем DNS сервер
$ ./scripts/run.sh dns-server
# Открываем https://<ip ВМ>:10000 для первичной настройки (root:password)
```

## Как собрать образ
```sh
$ docker build -t dimastark/provider-dns-server docker/dns-server
$ docker push dimastark/provider-dns-server
```
