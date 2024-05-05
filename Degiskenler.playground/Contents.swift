import UIKit

var ogrenciAdi = "Hilal"
var ogrenciYas = 21
var ogrenciBoy = 1.68
var ogrenciBasharf = "H"
var ogrenciDevamEdiyorMu = true

print("Ornek 1: ")
//
print("Ogrenci'nin Adi: \(ogrenciAdi) ")
print(ogrenciYas)
print(ogrenciBoy)
print(ogrenciBasharf)
print(ogrenciDevamEdiyorMu)

//
print("Ornek 2")

var urun_id : Int = 3416
var urun_adi : String = "Macbook"
var urun_adet : Int = 100
var urun_fiyat : Int = 9999
var urun_tedarikci : String = "Apple"

print("Urun Id : \(urun_id) ")
print("Urun adi: \(urun_adi)")
print("Urun adeti :\(urun_adet)")
print("Urun fiyat : \(urun_fiyat) ₺")
print("Urun tedarikci : \(urun_tedarikci)")

//Constant - Sabitler
//Swift - let

var sayi = 10
print(sayi)
sayi = 35
print(sayi)

let numara = 44
print(numara)

//Tur Donusumu - Type Casting

var i = 44
var d = 43.99

var sonuc1 =  Double(i)
var sonuc2 = Int(d)

print(sonuc1)
print(sonuc2)

//sayilsaldan sayisala

var sonuc3 = String(i)//"44"
var sonuc4 = String(d)//"43.99"

print("Sonuc 3: \(sonuc3)")
print("Sonuc 4: \(sonuc4)")

//Metinden Sayisala

var yazi = "34"

if let sonuc5 = Int(yazi){
    print("Sonuc 5 : \(sonuc5)")
}else{
    print("Donusum Hatasi") //34.
}


//Karsilastirma Operatorleri

var a = 40
var b = 50

var x = 90
var y = 80

print("a == b : \(a == b )" )
print("a != b : \(a != b )")

print("a > b || x > y : \(a > b || x > y)")
print("a > b && x > y : \(a > b && x > y)")

//if

var yas = 21
var isim = "Hilal"

if yas >= 18 {
    print("Resitsiniz")
}else{
    print("Resit Degilsiniz")
}

if isim == " Hilal"{
    print("Merhaba Hilal")
}else if isim == "Mehmet"{
    print("Merhaba Mehmet")
}else{
    print("Taninmayan kisi")
}

var ka = "hilalavcuu"
var s = 4444

if ka == "hilalavcuu" && s == 4444 {
    
    print("Hosgeldiniz")
}else{
    print("Hatali Giris")
}

//Switch, kotlin(when)

var gun = 3

switch gun {
case 1: print("Pazartesi")
case 2: print("Sali")
case 3: print("Carsamba")
case 4: print("Persembe")
case 5: print("Cuma")
case 6: print("Cumartesi")
case 7: print("Pazar")
default: print("Boyle bir gun yok")
}


//Donguler
//1,2,3

for i in 1...3{
    print("1.Dongu : \(i)")
}

for a in stride(from: 0, to: 20, by: 5){
    print("2.Dongu : \(a)")
}

for a in stride(from: 10, through: 20, by: 5){
    print("3.Dongu : \(a)")
}

//While

var sayac = 1

while sayac < 5 {
    print("4.Dongu : \(sayac)")
    sayac += 1
}

for i in 8...11{
    
    if i == 10 {
        break
    }
    print("5.Dongu : \(i)")
}

for i in 7...11{
    if i == 10{
        continue
    }
    print("6.Dongu : \(i)")
}









