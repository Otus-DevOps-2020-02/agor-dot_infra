# agor-dot_infra
agor-dot Infra repository

# ДЗ-3

Реализация команды для подключения одной комнандой
Подключение через одну команду реализовано с помощью способности ssh которая говорит «запустить программу и присосаться к её stdin/out».

Реализовано через ssh config ~/.ssh/config

Подключение осущевстляется командой ssh someinternalhost

Host someinternalhost
HostName 10.132.0.3
User alex-home
ProxyCommand ssh -W %h:%p alex-home@35.205.78.68
bastion_IP = 35.205.78.68

someinternalhost_IP = 10.132.0.3

Pritunl+SSL link: https://vpn.35.205.78.68.xip.io/login

# ДЗ-4

testapp_IP = 35.195.91.178
testapp_port = 9292

## Запуск готового экземпляра c приложением
```gcloud compute instances create reddit-app-2  --boot-disk-size=10GB   --image-family ubuntu-1604-lts   --image-project=ubuntu-os-cloud   --machine-type=g1-small   --tags puma-server   --restart-on-failure --metadata-from-file startup-script=/home/alex-home/OTUS/agor-dot_infra/install.sh```

## Добавление правила firewall
```gcloud compute firewall-rules create default-puma-server --action allow --target-tags puma-server --source-ranges 0.0.0.0/0 --rules tcp:9292```
