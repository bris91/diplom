# Дипломная работа по профессии «Системный администратор» SYS-32 Лебедев Борис
## Инфраструктура

Для развёртки инфраструктуры были использованы Terraform и Ansible.
Описание инфраструктуры находится в файле [main.tf](https://github.com/bris91/diplom/blob/48976e36562e6dc17839aafbabada44bfeb9abcb/terraform_netology/main.tf)

Созданы 6 ВМ:
Bastion
Zabbix-server
Kibana-server
Elasticsearch-server
Web-server_1
Web_server_2

![alt text](https://github.com/bris91/diplom/blob/da859e331743cfdeea3bb7418aaf10a6728139e6/images/vm.png)

Загрузка файла состояния terraform.tfstate в s3
![alt text](https://github.com/bris91/diplom/blob/da859e331743cfdeea3bb7418aaf10a6728139e6/images/bucket.png)

Создание сети и подсетей
![alt text](https://github.com/bris91/diplom/blob/da859e331743cfdeea3bb7418aaf10a6728139e6/images/network.png)

Создание балансировщика
![alt text](https://github.com/bris91/diplom/blob/da859e331743cfdeea3bb7418aaf10a6728139e6/images/alblb.png)

Проверка состояния балансировщика
![alt text](https://github.com/bris91/diplom/blob/da859e331743cfdeea3bb7418aaf10a6728139e6/images/alblb_health.png)

Создание security groups
![alt text](https://github.com/bris91/diplom/blob/da859e331743cfdeea3bb7418aaf10a6728139e6/images/security_group.png)

Создание снимков дисков
![alt text](https://github.com/bris91/diplom/blob/da859e331743cfdeea3bb7418aaf10a6728139e6/images/snapshot.png)

![alt text](https://github.com/bris91/diplom/blob/da859e331743cfdeea3bb7418aaf10a6728139e6/images/cloud.png)


Проверка доступности ВМ, используя ansible модуль ping
![alt text](https://github.com/bris91/diplom/blob/da859e331743cfdeea3bb7418aaf10a6728139e6/images/ping.png)

Запуск ansible-playbook [playbook.yml](https://github.com/bris91/diplom/blob/da859e331743cfdeea3bb7418aaf10a6728139e6/ansible_netology/playbook.yml)

![alt text](https://github.com/bris91/diplom/blob/da859e331743cfdeea3bb7418aaf10a6728139e6/images/ansible_finish.png)

## Сайт

Проверка работоспособности web серверов и балансировщика 
![alt text](https://github.com/bris91/diplom/blob/da859e331743cfdeea3bb7418aaf10a6728139e6/images/curl_web_1.png)
![alt text](https://github.com/bris91/diplom/blob/da859e331743cfdeea3bb7418aaf10a6728139e6/images/curl_web_2.png)
![alt text](https://github.com/bris91/diplom/blob/da859e331743cfdeea3bb7418aaf10a6728139e6/images/web_1.png)
![alt text](https://github.com/bris91/diplom/blob/da859e331743cfdeea3bb7418aaf10a6728139e6/images/web_2.png)


## Мониторинг

Подключение ВМ к Zabbix
![alt text](https://github.com/bris91/diplom/blob/da859e331743cfdeea3bb7418aaf10a6728139e6/images/zabbix_1.png)
Настройка дешбордов с отображением метрик.
![alt text](https://github.com/bris91/diplom/blob/da859e331743cfdeea3bb7418aaf10a6728139e6/images/zabbix_2.png)

## Логи

Установка filebeat и настройка отправки.

![alt text](https://github.com/bris91/diplom/blob/da859e331743cfdeea3bb7418aaf10a6728139e6/images/elasticsearch.png)
