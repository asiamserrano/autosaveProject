//
//  Pair.swift
//  autosaveProject
//
//  Created by Asia Serrano on 1/23/24.
//

import Foundation

public struct Pair: IdProtocol {
    
    var key: String
    var value: String
    
    public init(string: String) {
        self.key = string.canonicalized
        self.value = string.trimmed
    }
    
    public init(key: String, value: String) {
        self.key = key
        self.value = value
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.key)
    }
    
}
