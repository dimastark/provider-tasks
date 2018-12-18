# Scada

## Как запускать
```sh
# Запускаем Scada
$ ./scripts/run.sh scada -p 80:8080
# Можно открывать http://<ip ВМ>
```

## Как собрать образ
```sh
$ docker build -t dimastark/provider-scada docker/scada
$ docker push dimastark/provider-scada
```
