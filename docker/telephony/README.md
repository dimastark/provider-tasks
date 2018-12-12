# IP Telephony

## Как запускать
```sh
# Запускаем IP Telephony
$ ./scripts/run.sh telephony -d
# Открываем http://<ip ВМ>:8082 для первичной настройки
```

## Как смотреть логи
```sh
# Смотрим логи IP Telephony
$ docker logs -f telephony
```

## Как собрать образ
```sh
$ docker build -t repo/provider-telephony docker/telephony
$ docker push repo/provider-telephony
```
