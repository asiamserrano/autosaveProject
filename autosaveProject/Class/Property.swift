//
//  Property.swift
//  autosaveProject
//
//  Created by Asia Serrano on 1/23/24.
//

import Foundation
import SwiftData

@Model
public final class Property {
    
    private var uuid_string: String
    private var type_string: String
    private var key_string: String
    private var value_string: String
    
    private init(_ type: String, _ pair: Pair) {
        self.uuid_string = UUID().uuidString
        self.type_string = type
        self.key_string = pair.key
        self.value_string = pair.value
    }
    
    private convenience init(_ property: PropertyEnum, _ pair: Pair) {
        self.init(property.key, pair)
    }
    
    public var toString: String {
        "uuid: \(self.uuid_string)\ntype: \(self.type_string)\nkey: \(self.key_string)\nvalue: \(self.value_string)"
    }
   
}

public extension Property {
    
    static func platform(_ platform: PlatformEnum) -> Self {
        .init(.platform, .init(key: platform.key, value: platform.value))
    }
    
    static func platform(_ platform: PlatformBuilderEnum) -> Self {
        .init(platform.key, platform.child)
    }
    
    static func format(_ format: FormatEnum) -> Self {
        .init(.format, .init(key: format.key, value: format.value))
    }
    
    static func format(_ format: FormatBuilderEnum) -> Self {
        .init(format.key, format.child)
    }
    
    static func mode(_ mode: ModeEnum) -> Self {
        .init(.mode, .init(key: mode.key, value: mode.value))
    }
    
    static func input(_ input: InputEnum, _ value: String) -> Self {
        .init(input.key, .init(string: value))
    }
    
}

//public extension Property {
//    
//    var uuid: UUID {
//        if let u: UUID = .init(uuidString: self.uuid_string) {
//            return u
//        } else {
//            let u: UUID = .init()
//            self.uuid_string = u.uuidString
//            return u
//        }
//    }
//    
//}
