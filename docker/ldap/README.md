# LDAP Server

## Как запускать

```sh
# Запускаем LDAP Server
$ ./scripts/run.sh ldap
# Заходим на http://<ip ВМ> для первичной настройки
# Логин "cn=admin,dc=example,dc=org" Пароль "admin"
```

## Как собрать образ

```sh
$ docker build -t dimastark/provider-ldap docker/ldap
$ docker push dimastark/provider-ldap
```
