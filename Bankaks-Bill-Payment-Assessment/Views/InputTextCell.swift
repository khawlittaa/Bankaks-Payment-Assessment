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
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setInputField(field: BillField){
        inputFieldTitleLabel.text = field.name
        inputFieldTextValue.placeholder = field.hint_text
    }
    
}
