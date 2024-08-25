import UIKit
var greeting = "Hello, playground"

/* 1. Parametre olarak girilen kilometreyi mile dönüştürdükten sonra geri
 döndüren bir metod yazınız. Mile = Km x 0.621 */

class Soru1 {
    
    func donusum(km:Double) -> Double {
        let mile = km * 0.621
        return mile
    }
    
}
let s1 = Soru1()
let sonuc1 = s1.donusum(km: 125.0)
print("Km' den Mile donus : \(sonuc1)")

/*2. Kenarları parametre olarak girilen ve dikdörtgenin alanını
 hesaplayan bir metod yazınız.*/

class Soru2 {
    func alan(kenar1:Int, kenar2:Int){
        
        let hesap = kenar1 * kenar2
        print("Dikdortgen'in Alani : \(hesap)")
        
    }
}
let s2 = Soru2()
s2.alan(kenar1: 23, kenar2: 12)

/*Parametre olarak girilen sayının faktoriyel değerini hesaplayıp geri
 döndüren metodu yazınız.*/

class Soru3{
    
    func fakoriyel(sayi:Int) -> Int{
        var f = 1
        for i in 1...sayi{
            
            f *= i
        }
        return f
    }
}
let s3 = Soru3()
let sonuc3 = s3.fakoriyel(sayi: 5)
print("Girilen sayinin faktoriyeli \(sonuc3).")

/*Parametre olarak girilen kelime içinde kaç adet e harfi olduğunu
 gösteren bir metod yazınız.*/

class Soru4{
    
    func adet(kelime:String) {
        var adet = 0
        for i in kelime{
            if i == "e" {
                adet += 1
            }
        }
        print("\(kelime) kelimesinin icerisinde \(adet) adet 'e' harfi  vardir.")
        
    }
}
let s4 = Soru4()
s4.adet(kelime: "Menekse")

/*Parametre olarak girilen kenar sayısına göre her bir iç açıyı hesaplayıp sonucu geri gönderen metod
 yazınız.
 • İç açılar toplamı = ( (Kenar sayısı - 2) x 180 ) / Kenar sayısı */

class Soru5{
    
    func icAci(kenarSayisi : Int) -> Int{
        
        let icAcilarToplami = ((kenarSayisi - 2) * 180)
        return icAcilarToplami
    }
}
let s5 = Soru5()
let sonuc5 = s5.icAci(kenarSayisi: 5)
print("İç açılar toplamı : \(sonuc5)")


/*Parametre olarak girilen gün sayısına göre maaş hesabı yapan ve elde edilen değeri döndüren metod
 yazınız.
 • 1 günde 8 saat çalışılabilir.
 • Çalışma saat ücreti : 40 ₺
 • Mesai saat ücreti : 80 ₺
 • 150 saat üzeri mesai sayılır.*/

class Soru6 {
    
    func maas(gun:Int) -> Int {
        
        var toplamMaas = 0
        var birgun = 8
        var calismaUcreti = 40
        var mesaiUcreti = 80
        
        if ((gun * birgun) < 150  && (gun * birgun) > 0 ) {
            
            toplamMaas = gun * birgun * calismaUcreti
        }else{
            toplamMaas = ((((gun * birgun) - 150 ) * mesaiUcreti ) + 150 * calismaUcreti)
        }
        
        return toplamMaas
        
    }
}

let s6 = Soru6()
let sonuc6 = s6.maas(gun: 21)
print("Toplam maasiniz : \(sonuc6)")

/*Parametre olarak girilen otopark süresine göre otopark ücreti hesaplayarak geri döndüren metodu
 yazınız.
 • 1 saat = 50 ₺
 • 1 saat aşımından sonra her 1 saat , 10 ₺’dir.*/


class Soru7{
    
    func otoparkUcreti(sure:Int) -> Int{
        var birSaatUcreti = 50
        var birSaattenFazla = 10
        
        if (sure > 1){
            
             return ((birSaatUcreti * 1) + (sure - 1) * birSaattenFazla)
        }else{
             return  birSaatUcreti * 1
        }
       
    }
}

let s7 = Soru7()
let sonuc7 = s7.otoparkUcreti(sure: 4)
print("Otopark ucreti : \(sonuc7)")







