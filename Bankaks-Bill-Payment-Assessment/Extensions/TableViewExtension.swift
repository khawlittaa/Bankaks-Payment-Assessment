//
//  TableViewExtension.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 1/12/2020.
//

import UIKit

extension UITableView {
    
    func registerCell(nib: String, cellreuseIdentifier: String) {
        let  basicInfoCell = UINib(nibName: nib, bundle: nil)
        self.register(basicInfoCell, forCellReuseIdentifier: cellreuseIdentifier)
    }
    
    func registerHeaderFooter(nib: String, HeaderFooterreuseIdentifier: String){
        let headerNib = UINib.init(nibName: nib, bundle: nil)
        self.register(headerNib, forHeaderFooterViewReuseIdentifier: HeaderFooterreuseIdentifier)
    }
}
