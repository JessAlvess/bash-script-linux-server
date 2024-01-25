#!/bin/bash

echo ">>>>>>>>>>>> PROCESSO INICIADO <<<<<<<<<<<<<<"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo ">>>>>>>>>>>> FINALIZADO CRIAÇÃO DE DIRETÓRIOS <<<<<<<<<<<<<<"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo ">>>>>>>>>>>> FINALIZADO CRIAÇÃO DE GRUPOS <<<<<<<<<<<<<<"

useradd carlos -c "Carlos Jardim" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd maria -c "Maria da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd joao -c "João Albuquerque" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM

echo ">>>>>>>>>>>> FINALIZADO CRIAÇÃO DE USUÁRIOS DO GRUPO ADM <<<<<<<<<<<<<<<"

useradd debora -c "Debora Almeida" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Santos" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd roberto -c "Roberto Flores" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN

echo ">>>>>>>>>>>> FINALIZADO CRIAÇÃO DE USUÁRIOS DO GRUPO VEN <<<<<<<<<<<<<<"

useradd josefina -c "Josefina Ferreira" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd amanda -c "Amanda Costa" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Souza" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC

echo ">>>>>>>>>>>> FINALIZADO CRIAÇÃO DE USUÁRIOS DO GRUPO SEC <<<<<<<<<<<<<<"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo ">>>>>>>>>>>> REALIZADO A ADIÇÃO DE GRUPOS NOS DIRETÓRIOS <<<<<<<<<<<<<<"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo ">>>>>>>>>>>> REALIZADO A ALTERAÇÃO DAS PERMISSÕES DOS DIRETÓRIOS <<<<<<<<<<<<<<"

echo ">>>>>>>>>>>> PROCESSO FINALIZADO COM SUCESSO <<<<<<<<<<<<<<"