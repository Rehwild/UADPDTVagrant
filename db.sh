#!/usr/bin/env bash

debconf-set-selections <<< 'mysql-server mysql-server/root_password password uaspdt'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password uaspdt'
apt-get update
apt-get install -y mysql-server