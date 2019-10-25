
#!/bin/bash

while
	echo "----- Group & User Manager -----"
	echo "1.Group\n2.File\n3.User\n4.Exit"
	echo "Enter number: "
	read menu
	clear
	case $menu in
		1)
			while
				echo "----- Menu Group -----"
				echo "1.Buat Group\n2.Lihat Group\n3.Exit"
				echo "Enter number : "
				read menugroup
				clear
				case $menugroup in
					1)
					echo "Masukkan nama group : "
					read namagroup
					groupadd $namagroup
					echo "Masukkan password group : "
					read pwdgroup
					gpasswd $pwdgroup
					echo "Group '$namagroup' Created !";;
					2)
					echo "----- List Group -----"
					awk -F':' '{print $1}' /etc/group
					echo "--- End List group ---";;
					3)
					echo "Exit menu group !"
					break;;
				esac
			do true;
			done;;
		2)
			while
				echo "----- Menu File -----"
				echo "1.Buat File\n2.Lihat File\n3.Exit"
				echo "Enter number : "
				read menufile
				clear
				case $menufile in
					1)
					echo "Masukkan nama file : "
					read namafile
					touch /home/company/$namafile
					echo "File '$namafile' Created !";;
					2)
					echo "----- List File -----"
					ls /home/company
					echo "--- End List File ---";;
					3)
					echo "Exit menu file !"
					break;;
				esac
			do true;
			done;;
		3)
			while
				echo "----- Menu User -----"
				echo "1.Buat User\n2.Lihat User\n3.Set Hak Akses User\n4.Lihat Hak Akses User\n5.Uji Hak Akses User\n6.Exit"
				echo "Enter number : "
				read menuuser
				clear
				case $menuuser in
					1)
					echo "Masukkan nama user : "
					read namauser
					adduser $namauser
					echo "User '$namauser' Created !";;
					2)
					echo "----- List User -----"
					awk -F':' '{print $1}' /etc/passwd
					echo "--- End List User ---";;
					3)
					echo "Masukkan nama user : "
					read namauser
					echo "Masukkan hak akses : "
					read hakakses
					echo "----- List File -----"
					ls /home/company
					echo "--- End List File ---"
					echo "Masukkan nama file : "
					read namafile
					setfacl -m $namauser:$hakakses /home/company/$namafile
					echo "User '$namauser', Set permission successfully !";;
					4)
					echo "----- List Hak Akses User -----"
					getfacl /home/company/*
					echo "----- End Hak Akses User -----";;
					5)
					echo "Masukkan nama user : "
					read namauser
					su $namauser ls /home/company
					echo "Masukkan nama file : "
					read namafile
					nano $namafile
					echo "Permission test end !";;
					6)
					echo "Exit user menu !"
					break;;
				esac
			do true;
			done;;	
		4)
		echo "Exit !!!"
		exit;;
	esac

do true;
done
