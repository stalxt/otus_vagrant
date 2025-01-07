#!/bin/bash

#создание папки для файлов
#sudo mkdir kernel_update_tmp
#sudo cd ./kernel_update_tmp

#Обновление пакетов и установка wget
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install wget

#Скачивание файлов ядра
wget https://kernel.ubuntu.com/mainline/v6.12/amd64/linux-headers-6.12.0-061200_6.12.0-061200.202411220723_all.deb
wget https://kernel.ubuntu.com/mainline/v6.12/amd64/linux-modules-6.12.0-061200-generic_6.12.0-061200.202411220723_amd64.deb
wget https://kernel.ubuntu.com/mainline/v6.12/amd64/linux-image-unsigned-6.12.0-061200-generic_6.12.0-061200.202411220723_amd64.deb

#Установка пакетов
sudo dpkg -i linux-headers*.deb
sudo dpkg -i linux-modules*.deb
sudo dpkg -i linux-image*.deb
sudo update-grub
# Перезагрузка системы
sudo reboot
