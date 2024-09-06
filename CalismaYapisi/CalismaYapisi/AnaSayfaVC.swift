//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Hilal AVCU on 23.08.2024.
//

// ""
import UIKit

class AnaSayfaVC: UIViewController {
    
    //leading - left - Start
    //Trailing - right - End

    @IBOutlet weak var labelAnasayfa: UILabel!
    
    override func viewDidLoad() { //Uygulama ilk acildigi anda calisir (Bir kere calisir)
        super.viewDidLoad()
        labelAnasayfa.text = "Hoşgeldin"
        print("viewDidload Calisti")
        
    }
    override func viewWillAppear(_ animated: Bool) { //Sayfa her gorundugunde calisir
        print("viewWillAppear Calisti")
        //Sayfaya geri donuldugunde de calisir
    }
    override func viewWillDisappear(_ animated: Bool) { // sayfa gorunmez oldugunda calisir
        print("viewWillDisAppear Calisti")
    }

    @IBAction func buttonYap(_ sender: Any) {
        
        labelAnasayfa.text = "Merhaba"
        
    }
    
    
    @IBAction func buttonBasla(_ sender: Any) {
        let kisi = Kisiler(ad: "Hilal", yas: 22, boy: 1.68, bekar: true)
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: kisi)
        
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare calisti")
        
        if segue.identifier == "oyunEkraninaGecis"{
            print("oyunEkraninaGecis calisti")
        }
        
        if let veri = sender as? Kisiler{
            let gidilecekVC = segue.destination as! OyunEkraniVC
            gidilecekVC.kisi = veri
        }
        
        
    }
    
    
    @IBAction func buttonAdd(_ sender: Any) {
        
        print("Add calisti")
    }
    
    
    @IBAction func buttonSave(_ sender: Any) {
        print("Save calisti")
    }
    
}

