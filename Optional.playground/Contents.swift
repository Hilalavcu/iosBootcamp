import UIKit

var greeting = "Hello, playground"

//Optional = Nullable - Null Safety
//Tanimlama

var mesaj = "Merhaa"


//null - nil

var str : String?
str = "Merhaba"

if str != nil {
    print(str!) //unwrap
}else{
    print("str nil deger iceriyor")
}

//Optional binding - Degeri aktararak kontrol etmek

if let temp = str{
    print(temp)// otomatik unwrap
}else{
    print("str nil deger iceriyor")
}
