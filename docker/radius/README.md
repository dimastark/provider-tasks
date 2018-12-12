# Radius

## Как запускать
```sh
# Запускаем Radius
docker run --name my-radius -p 1812-1813:1812-1813/udp \ 
    dimastark/provider-radius
```

## Как смотреть логи

## Как собрать образ
```sh
$ docker build -t repo/provider-radius docker/radius
$ docker push repo/provider-radius
```
