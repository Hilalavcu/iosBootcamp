import UIKit


//Array kullanimi

var numaralar = [10,20,30]
numaralar.append(40)
print(numaralar)

var meyveler = [String]()

//veri ekleme
meyveler.append("Seftali")
meyveler.append("Kiraz")
meyveler.append("Visne")

print(meyveler)

//Guncelleme
meyveler[0] = "Yeni Seftali"
print(meyveler)

//insert

meyveler.insert("Muz", at: 3)
print(meyveler)


for meyve in meyveler{
    print("sonuc 1 : \(meyve)")
}

for (i,m) in meyveler.enumerated(){
    print("\(i). -> \(m)")
}


class Ogrenciler {
    var no : Int?
    var ad : String?
    var sinif : String?
    
    init(no: Int , ad: String, sinif: String) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}
var o1 = Ogrenciler(no: 200, ad: "Zeynep", sinif: "9C")
var o2 = Ogrenciler(no: 300, ad: "Ahmet", sinif: "11Z")
var o3 = Ogrenciler(no: 100, ad: "Hilal", sinif: "12A")

var ogrencilerListesi = [Ogrenciler]()

ogrencilerListesi.append(o1)
ogrencilerListesi.append(o2)
ogrencilerListesi.append(o3)

for o in ogrencilerListesi {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sinif : \(o.sinif!)")
}

//filtreleme

var f1 = ogrencilerListesi.filter({$0.no!>100})  //$0 no,ad sinifi temsil ediyor
print("Filtreleme 1")
for o in f1{
    print("No : \(o.no!) - Ad : \(o.ad!) - Sinif : \(o.sinif!)")
}

var f2 = ogrencilerListesi.filter({$0.ad!.contains("y")})  //$0 no,ad sinifi temsil ediyor
print("Filtreleme 2")
for o in f2{
    print("No : \(o.no!) - Ad : \(o.ad!) - Sinif : \(o.sinif!)")
}

//siralama - sorting

var s1 = ogrencilerListesi.sorted(by: {
    $0.no! > $1.no! })
print("Siralama 1")
for o in s1{
    print("No : \(o.no!) - Ad : \(o.ad!) - Sinif : \(o.sinif!)")
}

var s2 = ogrencilerListesi.sorted(by: {$0.ad! > $1.ad! })
print("Siralama 2")
for o in s2{
    print("No : \(o.no!) - Ad : \(o.ad!) - Sinif : \(o.sinif!)")
}
