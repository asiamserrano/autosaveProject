//
//  Enum+Protocol.swift
//  autosaveProject
//
//  Created by Asia Serrano on 1/23/24.
//

import Foundation

public protocol EnumProtocol: IdProtocol, CaseIterable, Comparable {
    
    static var all: [Self] { get }
        
}

public extension EnumProtocol {
    
    static func defaultValue(_ s: Self) -> String { s.key.capitalized }
    
    static func < (lhs:Self, rhs: Self) -> Bool { lhs.index < rhs.index }
    
    static var all: [Self] { self.allCases.sorted(by: { $0.index < $1.index }) }
    
    static var random: Self { self.allCases.randomElement()! }
    
    init?(_ str: String) {
        if let found: Self = Self.allCases.first(where: { $0.key == str }) {
            self = found
        } else { return nil }
    }
    
    private var index: Self.AllCases.Index { Self.allCases.firstIndex(of: self)! }
        
    var key: String { String(describing: self) }
    var value: String { Self.defaultValue(self) }

    func hash(into hasher: inout Hasher) {
        hasher.combine(self.key)
        hasher.combine(self.value)
    }
    
}
