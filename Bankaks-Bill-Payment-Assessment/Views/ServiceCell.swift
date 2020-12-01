//
//  ServiceCell.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 30/11/2020.
//

import UIKit

class ServiceCell: UITableViewCell {

    @IBOutlet weak var serviceNameLabel: UILabel!
    @IBOutlet weak var serviceIconImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func SetUpUI(service: Service){
        serviceNameLabel.text = service.serviceName
    }
    
}
