//
//  BillField.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 1/12/2020.
//

import Foundation
enum BillFieldCodingKeys: String, CodingKey {
    case name
    case placeholder
    case regex
    case type
    case is_mandatory
    case hint_text
    case ui_type
}

class BillField: NSObject, Codable{
    var name: String?
    var placeholder: String?
    var regex: String?
    var type: FieldType?
    var is_mandatory: String?
    var hint_text: String?
    var ui_type: FieldUIType?
    
        required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: BillFieldCodingKeys.self)
            name = try container.decode(String?.self, forKey: .name)
            placeholder = try container.decode(String?.self, forKey: .placeholder)
            regex = try container.decode(String?.self, forKey: .regex)
            is_mandatory = try container.decode(String?.self, forKey: .is_mandatory)
            hint_text = try container.decode(String?.self, forKey: .hint_text)
//            type = try container.decode(FieldType?.self, forKey: .type)
//            ui_type = try container.decode(FieldUIType?.self, forKey: .ui_type)
        }
    
}
