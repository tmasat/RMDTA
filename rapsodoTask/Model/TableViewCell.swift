//
//  TableViewCell.swift
//  rapsodoTask
//
//  Created by Çağrı Tuğberk MASAT on 6.01.2020.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var savedTaskImage: UIImageView!
    @IBOutlet weak var savedTaskName: UILabel!
    @IBOutlet weak var savedTaskDuration: UILabel!
    @IBOutlet weak var savedTaskDate: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
