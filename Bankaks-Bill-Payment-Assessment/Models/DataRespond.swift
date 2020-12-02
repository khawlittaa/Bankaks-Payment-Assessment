//
//  DataRespond.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 1/12/2020.
//

import Foundation

enum DataRespondCodingKeys: String, CodingKey {
    case status
    case message
    case result
}
class DataRespond: NSObject,Codable{
    var status: String
    var message: String?
    var result: Bill?
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DataRespondCodingKeys.self)
        status = try container.decode(String.self, forKey: .status)
        message = try container.decode(String.self, forKey: .message)
//        result = try container.decode(Bill?.self, forKey: .result)
    }
}
