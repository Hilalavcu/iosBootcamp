//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by Hilal AVCU on 23.08.2024.
//

import UIKit

class OyunEkraniVC: UIViewController {
    
    var kisi : Kisiler?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi{
            
            print("----OyunEkraniVC----")
            print("kisi ad : \(k.ad!)")
            print("kisi yas : \(k.yas!)")
            print("kisi boy : \(k.boy!)")
            print("kisi bekar : \(k.bekar!)")
        }
    }
    
    @IBAction func buttonGeri(_ sender: Any) {
        navigationController?.popViewController(animated: true) //Bir onceki sayfaya gecis ozelligi katar
       /* navigationController?.popToRootViewController(animated: true)*/   // Direk Anasayfa ya gecis ozelligini saglar
    }
    
 
    @IBAction func buttonBitir(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)  // verilen id ye gore istenilen sayfaya gecis ozelligi saglar gecis
        
        
    }
    
}
