# Vagrant-стенд для обновления ядра и создания образа системы
## Задание:
  1) Запустить ВМ с помощью Vagrant.
  2) Обновить ядро ОС.
     
## Особенности проектирования и реализации решения:

В методическом материале указано использовать ВМ с CentOS 8 Stream.  
Поскольку Red Hat прекратила её разработку и поддержку мной было принято решение изменить систему на доступную Ubuntu 22.04 с версией ядра 5.0.15.  
Данная система не поддерживает установку последней версии ядра из имеющихся репозиториев, поэтому обновление ядра проводилось из актуальных .deb файлов   
В связи с этим был адаптирован шаблонный Vagrantfile для данной системы.  
Также в него добавлен config.vm.provision для автоматического обновления ядра при поднятии ВМ.  

## Установка:

1) Создать папку для vagrant VM и перейти в неё  
2) Инициализировать Vagrant  
3) Удалить сгенерированый Vagrantfile из директории  
4) Скопировать файлы из репозитория в директорию  
5) Выполнить -- vagrant up
