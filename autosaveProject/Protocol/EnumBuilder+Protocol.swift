//
//  EnumBuilder+Protocol.swift
//  autosaveProject
//
//  Created by Asia Serrano on 1/23/24.
//

import Foundation

public protocol EnumBuilderProtocol: EnumProtocol {
        
    var child: Pair { get }
    var parent: Pair { get }
    
}

extension EnumBuilderProtocol {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.parent)
        hasher.combine(self.child)
    }
    
    public var key: String { self.parent.key }
    public var value: String { self.parent.value }
    
}
