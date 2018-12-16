# Suricata

## Как запускать
```sh
# Устанавливаем все, что нужно
$ add-apt-repository ppa:oisf/suricata-stable
$ apt-get update
$ apt-get install suricata -y

# Запускаем Suricata на интерфейсе чего либо
$ suricata -i <интерфейс>
# Правила содержатся в /var/lib/suricata/rules/suricata.rules
```
