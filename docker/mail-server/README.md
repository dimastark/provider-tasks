# Почтовый сервер

## Как запускать
```sh
# Устанавливаем переменные LDAP_IP
$ export LDAP_IP=<ip ВМ с ldap>
# Запускаем Почтовый сервер
$ ./scripts/run.sh mail-server -e LDAP_IP=$LDAP_IP
```

## Как собрать образ
```sh
$ docker build -t dimastark/provider-mail-server docker/mail-server
$ docker push dimastark/provider-mail-server
```
