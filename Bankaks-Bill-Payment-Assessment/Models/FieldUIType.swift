//
//  FieldUIType.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 1/12/2020.
//

import Foundation
enum FieldUITypeCodingKeys: String, CodingKey {
    case type
    case values
}

class FieldUIType: NSObject,Codable {
    var  type: String?
    var values: [DropDownValue]?
    
    //    required init(from decoder: Decoder) throws {
    //        let container = try decoder.container(keyedBy: FieldUITypeCodingKeys.self)
    //        type = try container.decode(String?.self, forKey: .type)
    //        values = try container.decode([DropDownValue]?.self, forKey: .values)
    //    }
}
