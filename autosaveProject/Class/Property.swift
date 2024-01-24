//
//  Property.swift
//  autosaveProject
//
//  Created by Asia Serrano on 1/23/24.
//

import Foundation
import SwiftData

@Model
final class Property {
    
    private var uuid_string: String
    private var type_string: String
    private var key_string: String
    private var value_string: String
    
    public static func input(_ input: InputEnum, _ value: String) -> Self {
        .init()
        .withType(.input(input))
        .withKey(value.canonicalized)
        .withValue(value.trimmed)
    }
    
    public static func mode(_ mode: ModeEnum) -> Self {
        .init()
        .withType(.mode)
        .withKey(mode.key)
        .withValue(mode.value)
    }
    
    private func withType(_ property: PropertyBuilderEnum) -> Self {
        self.type_string = property.key
        return self
    }
    
    private func withKey(_ key: String) -> Self {
        self.key_string = key
        return self
    }
    
    private func withValue(_ value: String) -> Self {
        self.value_string = value
        return self
    }

    private init() {
        let uuid: UUID = .init()
        self.uuid_string = uuid.uuidString
        self.type_string = .empty
        self.key_string = .empty
        self.value_string = .empty
    }
   
}
