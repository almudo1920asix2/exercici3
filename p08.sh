# Alex Muñoz

if [ $EUID != 0 ]
then
	echo "Tienes que ejecutarlo como usuario root"
exit 1
fi

clear 

most_serv() {
	clear
	echo "Ponga un servicio: "
	read servicio
}

ctl_serv() {
	
	
	service $servicio start
	service $servicio status
	
}
	

while [ true ]
do
	most_serv 
	echo -n "Pon el numero 1 "
	read x
	ctl_serv

done

exit 10
