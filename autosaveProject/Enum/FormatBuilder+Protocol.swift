//
//  FormatBuilder+Protocol.swift
//  autosaveProject
//
//  Created by Asia Serrano on 1/23/24.
//

import Foundation

public enum FormatBuilderEnum: EnumBuilderProtocol {
    
    public static var allCases: [Self] {
        FormatEnum.all.flatMap { format in
            switch format {
            case .digital: DigitalEnum.all.map { Self.digital($0) }
            case .physical: PhysicalEnum.all.map { Self.physical($0) }
            }
        }
    }
    
    case digital(DigitalEnum)
    case physical(PhysicalEnum)
    
    public var child: Pair {
        switch self {
        case .digital(let d):
            return .init(key: d.key, value: d.value)
        case .physical(let p):
            return .init(key: p.key, value: p.value)
        }
    }
    
    public var parent: Pair {
        var format: FormatEnum {
            switch self {
            case .digital(_): return .digital
            case .physical(_): return .physical
            }
        }
        
        return .init(key: format.key, value: format.value)
    }
    
}
