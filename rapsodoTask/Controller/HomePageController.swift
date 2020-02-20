//
//  HomePageController.swift
//  rapsodoTask
//
//  Created by Çağrı Tuğberk MASAT on 6.01.2020.
//

import UIKit

class HomePageController: UIViewController {
    
    let buttonBorder = ButtonBorder()
    
     @IBOutlet weak var createDrillButton: UIButton!
    @IBOutlet weak var showDrillsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        // Do any additional setup after loading the view.
        buttonBorder.addBorder(selectedButton: createDrillButton)
        buttonBorder.addBorder(selectedButton: showDrillsButton)  
    }
}
