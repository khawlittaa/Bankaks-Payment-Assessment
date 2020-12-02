//
//  ApiBillClient.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 1/12/2020.
//

import Alamofire
import Combine

class ApiBillClient {
    static func getBillInformation(billID: Int) -> Future<DataRespond, Error>{
        return NetworkPublisher.publish(ApiBillRouter.getBillInformation(billID: billID))
     }
}
