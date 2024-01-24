//
//  Format+Enum.swift
//  autosavedSkeleton
//
//  Created by Asia Serrano on 1/13/24.
//

import Foundation

public enum FormatEnum: EnumProtocol {
    
    case digital
    case physical
    
    public var icon: String {
        switch self {
        case .digital: return "arrow.down.circle.fill"
        case .physical: return "opticaldisc.fill"
        }
    }
       
//    public func getFormat(_ value: String) -> (any FormatProtocol)? {
//        switch self {
//        case .digital: return DigitalEnum(value)
//        case .physical: return PhysicalEnum(value)
//        }
//    }
    
}
