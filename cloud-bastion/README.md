# Реализация команды для подключения одной комнандой

Подключение через одну команду реализовано с помощью способности ssh которая говорит «запустить программу и присосаться к её stdin/out».

Реализовано через ssh config
~/.ssh/config

Подключение осущевстляется командой ssh someinternalhost
```
Host someinternalhost
HostName 10.132.0.3
User alex-home
ProxyCommand ssh -W %h:%p alex-home@35.205.78.68
```

bastion_IP = 35.205.78.68
someinternalhost_IP = 10.132.0.3

Pritunl+SSL link: https://vpn.35.205.78.68.xip.io/login
