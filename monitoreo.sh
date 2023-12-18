#/bin/bash

#uso de la memoria del sistema
memoria=$(free -h | awk '/Mem/{print "Uso de memoria: "$3" de "$2}')

#temperatura del sistema
temperatura=$(sensors | awk '/Tctl|Core 0/{print "Temperatura: "$2|$1}')

#mostrar memoria y temperatura
echo "==============================
 -Información del Sistema-
==============================
${memoria}
---------------------------
${temperatura}
==============================="
