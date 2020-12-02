//
//  Service.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 1/12/2020.
//

import Foundation

class Service{
    var serviceId: Int
    var serviceName: String = ""
    var serviceIconeURI: String = ""
    
    init(serviceID: Int,serviceName: String, serviceIconeURI: String = "") {
        self.serviceId = serviceID
        self.serviceName = serviceName
        self.serviceIconeURI = serviceIconeURI
    }
}
