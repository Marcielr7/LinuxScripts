#!/bin/bash
echo "criando diretorios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo " criando grupos de usuarios..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo " criuando usuarios..."

useradd funcionarioA -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
useradd funcionarioB -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
useradd funcionarioC -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM

useradd funcionarioD -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN

useradd funcionarioE -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN

useradd funcionarioF -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN

useradd funcionarioG -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC

useradd funcionarioH -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC

echo  "especificando permissoes de diretorios..."


chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico 

echo " FIM ....."
