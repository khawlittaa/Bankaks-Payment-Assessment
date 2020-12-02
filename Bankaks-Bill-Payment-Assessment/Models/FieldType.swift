//
//  FieldType.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 1/12/2020.
//

import Foundation
enum FieldTypeCodingKeys: String, CodingKey {
    case data_type
    case is_array
    case array_name
}

class FieldType: NSObject, Codable{
    var data_type: String?
    var is_array: String?
    var array_name: String?
    
//    required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: FieldTypeCodingKeys.self)
//        data_type = try container.decode(String?.self, forKey: .data_type)
//        is_array = try container.decode(String?.self, forKey: .is_array)
//        array_name = try container.decode(String?.self, forKey: .array_name)
//    }
}

