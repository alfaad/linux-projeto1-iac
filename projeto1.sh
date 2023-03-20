#!/bin/bash

echo "Criando projeto aguarde ...."

mkdir publico adm ven sec 

addgroup --force-badname GRP_ADM
addgroup --force-badname GRP_VEN
addgroup --force-badname GRP_SEC

useradd carlos -c "carlos" -G GRP_ADM -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd maria -c "maria" -G GRP_ADM -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd joao -c "joao" -G GRP_ADM -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd debora -c "debora" -G GRP_VEN -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd sebastiana -c "sebastiana" -G GRP_VEN -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd roberto -c "roberto" -G GRP_VEN -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd josefina -c "josefina" -G GRP_SEC -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd amanda -c "amanda" -G GRP_SEC -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd rogerio -c "rogerio" -G GRP_SEC -s /bin/bash -m -p $(openssl passwd -6 Senha123)

chgrp GRP_ADM adm
chgrp GRP_VEN ven
chgrp GRP_SEC sec

chmod 777 publico
chmod 770 adm
chmod 770 ven
chmod 770 sec

echo "Finalizado"
