# Suricata

## Как запускать
```sh
# Запускаем Suricata на интерфейсе чего либо
$ docker run -it --net=host -v ~/suricata-logs:/var/log/suricata \
	dimastark/provider-suricata -i <interface>
```

## Как смотреть логи
```sh
# Смотрим логи Suricata
$ tail -f ~/suricata-logs
```

## Как собрать образ
```sh
$ docker build -t repo/provider-suricata docker/suricata
$ docker push repo/provider-suricata
```
