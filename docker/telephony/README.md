# IP Telephony

## Как запускать

```sh
# Запускаем IP Telephony
$ ./scripts/run.sh telephony
# Открываем http://<ip ВМ>/admin для первичной настройки
```

## Как собрать образ

```sh
$ docker build -t dimastark/provider-telephony docker/telephony
$ docker push dimastark/provider-telephony
```
