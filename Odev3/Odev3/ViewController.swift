//
//  ViewController.swift
//  Odev3
//
//  Created by Hilal AVCU on 22.08.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.navigationItem.title = "Waffle"
        
        
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "anaRenk")
        
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named:"Color")!, .font:UIFont(name:"KaushanScript-Regular", size:27)!]
        
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
    }


}

