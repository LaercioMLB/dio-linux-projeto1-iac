#!/bin/bash

echo "Criar diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criar grupos dos usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criar usuários" 

useradd laercio -m -s /bin/bash -p $(openssl passwd -crypt laercio) -G GRP_ADM
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt roberto) -G GRP_ADM
useradd vini -m -s /bin/bash -p $(openssl passwd -crypt vini) -G GRP_ADM

useradd riad -m -s /bin/bash -p $(openssl passwd -crypt riad) -G GRP_VEN
useradd guilherme -m -s /bin/bash -p $(openssl passwd -crypt guilherme) -G GRP_VEN
useradd eduarda -m -s /bin/bash -p $(openssl passwd -crypt eduarda) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt josefina) -G GRP_SEC
useradd fernanda -m -s /bin/bash -p $(openssl passwd -crypt fernanda) -G GRP_SEC
useradd jorge -m -s /bin/bash -p $(openssl passwd -crypt jorge) -G GRP_SEC

echo "Permissões para do diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado"

