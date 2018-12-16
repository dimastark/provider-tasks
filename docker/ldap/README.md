# LDAP Server

## Как запускать
```sh
# Запускаем LDAP Server
$ ./scripts/run.sh ldap -d
# Заходим на http://<ip ВМ>:8080 для первичной настройки
# Логин "cn=admin,dc=provider,dc=ru" Пароль "admin"
```

## Как смотреть логи
```sh
# Смотрим логи LDAP сервера
$ docker logs -f ldap
# Смотрим логи административного сервера
$ docker logs -f ldapadmin
```

## Как собрать образ
```sh
$ docker build -t repo/provider-ldap docker/ldap
$ docker push repo/provider-ldap
```
