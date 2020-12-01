//
//  InputTextCell.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 30/11/2020.
//

import UIKit

class InputTextCell: UITableViewCell {

    @IBOutlet weak var inputFieldTitleLabel: UILabel!
    @IBOutlet weak var inputFieldTextValue: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
