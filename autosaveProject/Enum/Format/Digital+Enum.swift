//
//  Digital+Enum.swift
//  autosavedSkeleton
//
//  Created by Asia Serrano on 1/13/24.
//

import Foundation

public enum DigitalEnum: FormatProtocol {
    
    public var formatEnum: FormatEnum  { .digital }
    
    case steam, origin, psn, xbox, nintendo, file
    
    public var value: String {
        switch self {
        case .psn: return "Playstation Network"
        case .xbox: return "Xbox Live"
        case .nintendo: return "Nintendo eShop"
        case .file: return "System File"
        default: return Self.defaultValue(self)
        }
    }
    
}
