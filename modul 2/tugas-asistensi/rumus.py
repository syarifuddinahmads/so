#!/usr/bin/python

status = 1
while status == 1:
    print("===== Rumus Bidang Bangun =====")
    print("1.Segitiga\n2.Persegi\n3.Lingkaran\n4.Exit ")
    menu = int(input("Input Menu :"))
    if menu == 1:
        alas = int(input("Input Alas : "))
        tinggi = int(input("Input Tinggi : "))
        sisiSegitiga = int(input("Input Sisi : "))
        lSegitiga = 1/2 * (alas * tinggi)
        kSegitiga = sisiSegitiga + sisiSegitiga + sisiSegitiga
        print("Luas Segitiga = "+str(lSegitiga))
        print("Keliling Segitiga = "+str(kSegitiga))
    elif menu == 2:
        sisi = int(input("Input Sisi : "))
        lPersegi = sisi * sisi
        kPersegi = 4 * sisi
        print("Luas Persegi = "+str(lPersegi))
        print("Keliling Persegi = "+str(kPersegi))
    elif menu == 3:
        phi = 3.14
        diameter = int(input("Input Diameter : "))
        jari = int(input("Input Jari-jari : "))
        lLingkaran = phi * (jari*jari)
        kLingkaran = phi * diameter
        print("Luas Lingkaran = "+str(lLingkaran))
        print("Keliling Lingkaran = "+str(kLingkaran))
    else:       
        break
    lanjut = input("Lanjut ? y = 1 / t =0) : ")
    if lanjut == 1:
        status = 1        
    else:
        status = 0

