//
//  BillViewController.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 1/12/2020.
//

import UIKit

class BillViewController: UIViewController {

    let BillVM = BillViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getBillDate()
    }
    
    func getBillDate(){
        BillVM.getBillInfo()
    }


}
