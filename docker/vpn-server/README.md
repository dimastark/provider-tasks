# VPN Server

## Как запускать
```sh
# Получаем основной ip адрес виртуальной машины
$ export IP=$(hostname -I | cut -d ' ' -f1)
# Создаем файл с конфигурацией
$ ./scripts/command.sh vpn-server openvpn ovpn_genconfig -u udp://$IP
# Инициализируем PKI
$ ./scripts/command.sh vpn-server openvpn ovpn_initpki
# Запускаем сервер
$ ./scripts/run.sh vpn-server -p 1194 -d
```

## Как работать с сертификатами
```sh
# Задаем имя клиента
$ export CLIENTNAME="your_client_name"

# Запрашиваем клиентский сертификат - с паролем
$ ./scripts/command.sh vpn-server openvpn easyrsa build-client-full $CLIENTNAME
# Запрашиваем клиентский сертификат - без пароля (НЕ РЕКОМЕНДУЕТСЯ)
$ ./scripts/command.sh vpn-server openvpn easyrsa build-client-full $CLIENTNAME nopass

# Запрашиваем клиентскую конфигурацию
$ ./scripts/command.sh vpn-server openvpn ovpn_getclient $CLIENTNAME > $CLIENTNAME.ovpn

# Отзываем сертификат - оставить все файлы
$ ./scripts/command.sh vpn-server openvpn ovpn_revokeclient $CLIENTNAME
# Отзываем сертификат - удалить все файлы
$ ./scripts/command.sh vpn-server openvpn ovpn_revokeclient $CLIENTNAME remove
```

## Как смотреть логи
```sh
# Смотрим логи VPN сервера
$ docker logs -f vpn-server
```

## Как собрать образ
```sh
$ docker build -t repo/provider-messenger docker/messenger
$ docker push repo/provider-messenger
```
