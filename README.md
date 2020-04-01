# agor-dot_infra
agor-dot Infra repository


# ДЗ-5

На основе reddit-base был создан расширенный образ reddit-full включающий в себя установленный и рабочий ```puma.service```.

Через packer копируется предподготовленный файл сервис юнита ```puma.service```.
```
            "type": "file",
            "source": "files/puma.service",
            "destination": "/tmp/puma.service"
```
После копируется из ```/tmp``` в ```/etc/systemd/system```
B включается командой ```systemctl enable puma```

Команда на разворот:

```
gcloud compute instances create reddit-full \
  --boot-disk-size=10GB   \
  --image-family reddit-full \
  --machine-type=f1-micro   \
  --tags puma-server
```
