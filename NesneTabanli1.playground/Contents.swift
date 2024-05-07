import UIKit

var greeting = "Hello, playground"

class Araba{
    var renk : String?
    var hiz : Int?
    var calisiyorMu : Bool?
    
    init(){
        print("Bos init metodu calisti")
    }
    
    init(renk : String,hiz : Int, calisiyorMu : Bool){
        
        self.renk = renk // self : bulundugu sinifi temsil ediyor.
        self.hiz = hiz
        self.calisiyorMu = calisiyorMu  // shadowing : Golgeleme
        print("Dolu init metodu calisti")
        
    }
    
    
    
    func calistir(){//Side Effect : Bir fonksiyonla  classin degiskenlerini degistirebiliyorsan buna side effect denir. (Yan Etki)
        
        calisiyorMu = true
        hiz = 5
        
    }
    
    func durdur(){
        
        calisiyorMu = false
        hiz = 0
    }
    
    func hizlan(kacKm : Int){   //hiz optinal ifadedir unwrap yaparak kacKm ile toplayabiliriz
        hiz! += kacKm
    }
    
    func yavasla(kacKm : Int){
        hiz! -= kacKm
    }
    
    
    
    func bilgiAl(){
        
        print("-----------------------")
        print("Renk         : \(renk!)")
        print("Hiz          : \(hiz!)")
        print("Calisiyor Mu : \(calisiyorMu!)")
    }
    
}

//Nesne olusturma

var bmw = Araba(renk: "Mavi", hiz: 180, calisiyorMu: true)

//Deger Atama
//bmw.renk = "Mavi"
//bmw.hiz  = 180
//bmw.calisiyorMu = true

//Deger Okuma

bmw.bilgiAl()
bmw.durdur()
bmw.bilgiAl()
bmw.calistir()
bmw.bilgiAl()
bmw.hizlan(kacKm: 100)
bmw.bilgiAl()



var sahin = Araba()

sahin.renk = "Beyaz"
sahin.hiz = 50
sahin.calisiyorMu = false

sahin.bilgiAl()
sahin.durdur()
sahin.bilgiAl()
sahin.calistir()
sahin.bilgiAl()
sahin.hizlan(kacKm: 70)
sahin.bilgiAl()
sahin.yavasla(kacKm: 10)
sahin.bilgiAl()


class fonksiyonlar {
    
    func selamla1() {
        let sonuc = "Merhaba Hilal"
        print(sonuc)
    }
    
    func selamla2() -> String{
        let sonuc = "Merhaba Zehra"
        return sonuc
        
    }
    
    func selamla3(isim:String){
        let sonuc = "Welcome to world \(isim)."
        print(sonuc)
    }
    
    func toplama(sayi1:Int, sayi2:Int) -> Int {
        
        let toplam = sayi1 + sayi2
        return toplam
    }
    
    //Overloading
    
    func carpma(sayi1:Int, sayi2:Int){
        
        print("Carpma : \(sayi1 * sayi2)")
    }
    
    func carpma(sayi1:Double, sayi2:Double){
        
        print("carpma : \(sayi1 * sayi2)")
    }
    
    func carpma(sayi1:Int, sayi2:Int, isim:String){
        
       print("Carpma : \(sayi1 * sayi2) - islemi yapan \(isim).")
    }
    
}

let f = fonksiyonlar()
f.selamla1()

let gelenSonuc = f.selamla2()
print(gelenSonuc)
f.selamla3(isim: "Apple")

let gelenToplam = f.toplama(sayi1: 22, sayi2: 78)
print("Gelen Toplam : \(gelenToplam)")

f.carpma(sayi1: 42, sayi2: 12)

f.carpma(sayi1: 21, sayi2: 45, isim: "Xcode")







