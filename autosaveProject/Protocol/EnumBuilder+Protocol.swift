//
//  EnumBuilder+Protocol.swift
//  autosaveProject
//
//  Created by Asia Serrano on 1/23/24.
//

import Foundation

public protocol EnumBuilderProtocol: EnumProtocol {
    
    var pair: Pair { get }
    
}

extension EnumBuilderProtocol {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.className)
        hasher.combine(self.pair)
    }
    
    public var pair: Pair {
        .init(key: self.key, value: self.value)
    }
    
    public var key: String { self.pair.key }
    public var value: String { self.pair.value }
    
}
