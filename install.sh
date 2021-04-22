#!/bin/bash

# ************************************
# **     Instalacion de Bitnami     **
# **             Drupal             **
# ************************************

set -x

# Actualizamos e instalamos la lista de paquetes
apt update && apt upgrade -y

# Descargamos el instalador ejecutable de Bitnami Drupal
wget https://bitnami.com/redirect/to/1435373/bitnami-drupal-9.1.6-0-linux-x64-installer.run

# Cambiamos los permisos
chmod a+x bitnami-drupal-9.1.6-0-linux-x64-installer.run

# Instalamos las librerias que necesitamos para la instalación
apt-get install libncurses5 -y

# Ejecutamos el instalador
./bitnami-drupal-9.1.6-0-linux-x64-installer.run


