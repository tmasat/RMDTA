//
//  ButtonBorder.swift
//  rapsodoTask
//
//  Created by Çağrı Tuğberk MASAT on 9.01.2020.
//

import Foundation
import UIKit

class ButtonBorder {
    
    func addBorder(selectedButton: UIButton){
        selectedButton.layer.borderWidth = 2
        selectedButton.layer.borderColor = UIColor.black.cgColor
    }
}
