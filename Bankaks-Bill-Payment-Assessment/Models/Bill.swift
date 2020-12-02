//
//  Bill.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 1/12/2020.
//

import Foundation

enum BillCodingKeys: String, CodingKey {
    case number_of_fields
    case screen_title
    case operator_name
    case service_id
    case fields
}
class Bill: NSObject, Codable {
    var number_of_fields: Int?
    var screen_title: String?
    var operator_name: String?
    var  service_id: String?
    var fields: [BillField?]?
    
//    required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: BillCodingKeys.self)
//        number_of_fields = try container.decode(Int?.self, forKey: .number_of_fields)
//        screen_title = try container.decode(String?.self, forKey: .screen_title)
//        operator_name = try container.decode(String?.self, forKey: .operator_name)
//        service_id = try container.decode(String?.self, forKey: .service_id)
//        fields = try container.decode([BillField?]?.self, forKey: .fields)
//    }
}
