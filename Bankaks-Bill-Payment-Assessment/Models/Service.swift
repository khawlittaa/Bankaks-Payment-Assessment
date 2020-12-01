//
//  Service.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 1/12/2020.
//

import Foundation

class Service{
    var serviceName = ""
    var serviceIconeURI = ""
    
    init(serviceName: String, serviceIconeURI: String = "") {
        self.serviceName = serviceName
        self.serviceIconeURI = serviceIconeURI
    }
}
