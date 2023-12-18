#/bin/bash

#uso de la memoria del sistema
memoria=$(free -h | grep "Mem" | awk '{print "Uso de memoria "$3" de "$2}')

#temperatura del sistema
temperatura=$(lm-sensors | grep "Core 0" | awk '{print "Temperatura: "$3}')

#mostrar memoria y temperatura
echo "${memoria} - ${temperatura}"