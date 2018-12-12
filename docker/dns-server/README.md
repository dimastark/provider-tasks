# DNS Server

## Как запускать
```sh
# Останавливаем systemd-resolved (освобождаем 53 порт)
$ sudo systemctl stop systemd-resolved
# Запускаем DNS сервер
$ ./scripts/run.sh dns-server -p 53 -p 10000 -d
# Открываем https://<ip ВМ>:10000 для первичной настройки (root:password)
```

## Как смотреть логи
```sh
# Смотрим логи DNS сервера
$ docker logs -f dns-server
```

## Как собрать образ
```sh
$ docker build -t repo/provider-dns-server docker/dns-server
$ docker push repo/provider-dns-server
```
