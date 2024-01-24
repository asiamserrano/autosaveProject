//
//  Id+Protocol.swift
//  autosaveProject
//
//  Created by Asia Serrano on 1/23/24.
//

import Foundation

public protocol IdProtocol: Identifiable, Equatable, Hashable {
    var id: Int { get }
}

public extension IdProtocol {
    
    static func == (lhs: Self, rhs: Self) -> Bool { lhs.id == rhs.id }
    
    var id: Int { self.hashValue }
    var className: String { String(describing: Self.self) }
        
}
