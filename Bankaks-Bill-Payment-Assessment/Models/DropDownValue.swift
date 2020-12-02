//
//  DropDownValue.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 1/12/2020.
//

import Foundation
enum DropDownValueCodingKeys: String, CodingKey {
    case id
    case name
}
class DropDownValue: NSObject,Codable {
    var id: String?
    var name: String?
    
//    required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: DropDownValueCodingKeys.self)
//        id = try container.decode(String?.self, forKey: .id)
//        name = try container.decode(String?.self, forKey: .name)
//    }
}
