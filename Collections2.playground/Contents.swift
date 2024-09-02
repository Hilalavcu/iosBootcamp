import UIKit

//Set

var meyveler = Set<String>()

//veri ekleme
meyveler.insert("Elma")
meyveler.insert("Portakal")
meyveler.insert("Muz")
print(meyveler)

meyveler.insert("Amasya Elmasi")
print(meyveler)

for meyve in meyveler{
    print("Sonuc :\(meyve)")
}

for (index,m) in meyveler.enumerated(){
    print("\(index). -> \(m)")
}

print("Boyut : \(meyveler.count)")
print("Bos mu? : \(meyveler.isEmpty)")


//Dictionary - HasMap - Map

var iller = [Int:String]()

//veri ekleme
iller[16] = "Bursa"
iller[34] = "Istanbul"
print(iller)

//veri okuma
print(iller[16]!)

//veri guncelleme

iller[16] = "Yeni Bursa"
print(iller)

for (anahtar , deger ) in iller {
    print("\(anahtar) -> \(deger)")
}
