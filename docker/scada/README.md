# Scada

## Как запускать
```sh
# Запускаем Scada
docker run -it -e DOCKER_HOST_IP=<ip ВМ> -p 81:8080 \		                dimastark/provider-scada /root/start.sh
# Можно открывать http://<ip ВМ>:81
```

## Как смотреть логи

## Как собрать образ
```sh
$ docker build -t repo/provider-scada docker/scada
$ docker push repo/provider-scada
```
