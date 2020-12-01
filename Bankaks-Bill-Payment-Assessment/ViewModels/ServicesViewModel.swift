//
//  ServicesViewModel.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 1/12/2020.
//

import Foundation

class ServicesViewModel {
    
    var services:[Service] = [Service]()
    
    init() {
        let serv1 = Service(serviceName: "Option 1")
        let serv2 = Service(serviceName: "Option 2")
        let serv3 = Service(serviceName: "Option 3")
        services = [serv1,serv2,serv3]
    }
}
