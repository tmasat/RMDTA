//
//  DrillCreatedController.swift
//  rapsodoTask
//
//  Created by Çağrı Tuğberk MASAT on 6.01.2020.
//

import UIKit

class DrillCreatedController: UIViewController {

    @IBOutlet weak var homeButton: UIButton!
    let buttonBorder = ButtonBorder()
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonBorder.addBorder(selectedButton: homeButton)

        // Do any additional setup after loading the view.
    }
    

    @IBAction func homeButtonPressed(_ sender: Any) {
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    

}
