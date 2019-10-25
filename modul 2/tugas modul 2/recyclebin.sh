
#!/bin/bash

while
	echo "----- Recycle Bin -----"
	echo "1.Delete\n2.Lihat isi Recycle Bin\n3.Restore\n4.Empty Recycle Bin\n5.Exit"
	echo "Enter number: "
	read menu
	case $menu in
		1)
		ls home/
		echo "Input nama file : "
		read filename
		mv home/$filename /home/syarifuddin/recycle_bin;;
		2)
		echo "------------------"
		ls recycle_bin;;
		3)
		echo "-------------------"
		ls recycle_bin
		echo "Input nama file yang akan direstore : "
		read filenametorestore
		mv /home/syarifuddin/recycle_bin/$filenametorestore /home/syarifuddin/home
		echo "File '${filenametorestore}' restored !";;
		4)
		rm -r /home/syarifuddin/recycle_bin/*
		echo "All file deleted !";;
		5)
		echo "Exit !!!"
		exit;;
	esac

do true;
done
