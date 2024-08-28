import UIKit


/* OOP Kalitim Kurali
 -> kodun tekrar kullanilabilirligini arttirir.
 -> Bir sinifin tek kalitimi olabilir (Bir sinifa birden fazla kalitim yolu ile baglanamaz.)
ustsinif: SuperClass
altsinif: SubClass
 
*/

class Ev {
    var pencereSayisi : Int?
    
    init(pencereSayisi: Int) {
        self.pencereSayisi = pencereSayisi
    }
    
}

class Saray : Ev {
    var kuleSayisi: Int?
    init(kuleSayisi: Int,pencereSayisi:Int) {
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)  //ust sinifa erisiriz.
    
    }
    
}

class Villa : Ev{
    
    var garajVarMi: Bool?
    init(garajVarMi: Bool, pencereSayisi:Int) {
        self.garajVarMi = garajVarMi
        super.init(pencereSayisi: pencereSayisi)
    }
    
    
}

let topkapiSarayi = Saray(kuleSayisi: 5, pencereSayisi: 300)
let bogazVilla = Villa(garajVarMi: true, pencereSayisi: 30)
print(topkapiSarayi.kuleSayisi!)
print(topkapiSarayi.pencereSayisi!)
print(bogazVilla.garajVarMi!)
print(bogazVilla.pencereSayisi!)


/* Override : Metodlari Ezme
-> Kalitim iliskisinde ust sinifin metodlarinin  alt sinif tarafindan tekrar kullanilmasidir.
->Overloading : Ayni sinif icerisinde gerceklesir,ayni fonksiyonun tekrara tekrar kullanilmasidir
-> Overriding : On kosul "katilitim olmasi" , o fonksiyonu alt siniflarda tekrar kullanabilirsin
 */

/*
 Hayvan -> Memeli -> (kedi and kopek)
 */

class Hayvan {
    func sesCikar(){
        print("Sesim Yok")
    }
}

class Memeli : Hayvan {
    
    
    
}

class Kedi : Memeli {
    
    override func sesCikar() {
       print("Miyav Miyav")
    }
    
}

class Kopek : Memeli {
    
    override func sesCikar() {
        print("Hav Hav")
    }
    
}

let hayvan = Hayvan()  //kalitim yok kendi fonksiyonunu calistirir
let memeli = Memeli()  // kalitim var ust sinifin fonksiyonunu calistirdi.
let kedi = Kedi()   //kalitim var , kendi metodunu calistirir.
let kopek = Kopek() // kalitim var , kendi metodunu calistirir.

hayvan.sesCikar()
memeli.sesCikar()
kedi.sesCikar()
kopek.sesCikar()

//TIP DONUSUMU

/*
 -> Tip Donusumu olmasi icin "kalitim" olmasi gerekir.
 
 UpCasting - as : sub classi super class'a dondureceksek  (Saray bir evdir.)
 DownCasting  as! & as? : Super class'i sub class'a dondureceksek (Ev bir villa midir?)
 as! : Bu donusumu yapabilirsin ben bu kodlamaya guveniyorum.sorun olmayacaktir ama sorun olabilir garanti veriyoruz
 as? : Eger burda sorun olursa bu degiskeni nil yap. Uygulama cokmemis olur.
 
 */

//Upcasting

var ev = Saray(kuleSayisi: 3, pencereSayisi: 10) as Ev

//Downcasting

var saray = Ev(pencereSayisi: 6) as? Saray

// Tip kontrolu

if ev is Ev {
    print("Nesne ev sinifindandir.")
}else{
    print("Nesne ev sinifindan degildir.")
}

/*
Protocol
->interface olarak bilinir.
->Hem class hem structure yapisinda kullanilabilir.
->Bir sinif (class ve structure) birden fazla protocol alabilir.
->Hazir taslak gibi dusunebiliriz.
->Protocoller siniflara ozellik katar.
 
 set : Deger okuma
 get : Deger atama


 */

protocol MyProtocol {
    
    var degisken :Int{ get set}  /* get = deger atama , set = deger okuma */
    
    func metod1()
    func metod2() -> String
    
}

/*
 Type 'ClassA' does not conform to protocol 'MyProtocol'
 (Conform protocol : ben bu class'a protocol ekledim . onun kullanmam gereken degiken ve metodlari kullanmadin , kullanman gerekir.
 */

class ClassA : MyProtocol {
    var degisken: Int = 10
    
    func metod1() {
        print("Metod 1 calisti")
    }
    func metod2() -> String {
        return "Metod 2 calisti"
    }
    
}

var a =  ClassA()
print(a.degisken)
a.metod1()
print(a.metod2())

/*
Extension (Genisleme)
 var olan bir sistemi genisletebilirsiniz
 
 -> yazdigimiz classlari daha moduler hale getirmek icin de kullanilabilir.
 */


extension Int {
    func carp(sayi:Int) -> Int{
        return self * sayi  //self Int ' i temsil eder.
    }
}

let x = 3.carp(sayi: 5)  //var olan yapi genislemis olur .
print(x)

/*
 Closure ({}) in
 */

let ifade = {
    print("Merhaba")
}
ifade()
