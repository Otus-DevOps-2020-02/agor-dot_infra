# agor-dot_infra
agor-dot Infra repository


#Homework9: Продолжение знакомства с Ansible: templates, handlers, dynamic inventory, vault, tags
- Создан playbook reddit_app.yml
- Настроены сценарии для хоста MongoDB
- Создан шаблон mongod.conf.j2, который с помощью модуля templates в плейбуке копирует, подставляя нужные значения переменных, шаблон настройки mongod на ВМ
- Добавлены tags для того, чтобы была возможность запускать playbook только по каким-то определенным тагам.
- Определены переменные в плейбке в секции vars - они будут переданы в шаблон
- Добавлены handlers, которые вызываются из tasks по параметру notify - в данном случае task, при статусе changed вызывает handler, который рестартует сервис монги (с помощью модуля service)
- Предварительный запуск ansible-playbook с параметром --check проходится по списку тасков, но не применяет их.

     ```ansible-playbook reddit_app.yml --check --limit db```

- Применение конфигурации
```
            ansible-playbook reddit_app.yml --limit db

            PLAY [Configure hosts & deploy application] *******************************************************************

            TASK [Gathering Facts] ****************************************************************************************
            ok: [dbserver]

            TASK [Change mongo config file] *******************************************************************************
            changed: [dbserver]

            RUNNING HANDLER [restart mongod] ******************************************************************************
            changed: [dbserver]

            PLAY RECAP ****************************************************************************************************
            dbserver                   : ok=3    changed=2    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
```
####Сценарии для приложения
- С помощью модуля copy скопирован unit.service файл для сервера puma
- Добавлен таск, который через модуль systemd выставляет сирвису puma значение enabled
- Добавлен handler для перезапуска через systemd сервиса puma
- Добавлен шаблон для приложения, которые отвечает за определенных environment переменных
- Настроен деплой с помощью модулей git и bundler
- Один play сценарий разделн на три (бд, приложение, деплой) в одном файле.
- Далее разделили на три разных файла (app.yml, db.yml, deploy.yml), которые объеденины по средством import_playbook в site.yml

####Провиженинг в Packer
- Создан плейбук packer_app.yml
- Создан плейбук packer_db.yml
- Эти плейбуки добавлены в качестве провиженоров в packer
- Созданы образы с помощью packer
