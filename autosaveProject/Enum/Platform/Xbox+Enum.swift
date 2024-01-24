//
//  Xbox+Enum.swift
//  autosavedSkeleton
//
//  Created by Asia Serrano on 1/13/24.
//

import Foundation

public enum XboxEnum: PlatformProtocol {
    
    case xbox, x360, one
    
    public var value: String {
        var end: String {
            switch self {
            case .xbox: return .empty
            case .x360: return "360"
            case .one: return "One"
            }
        }
        
        return "\(self.platformEnum.value) \(end)".trimmed
    }
    
    public var platformEnum: PlatformEnum { .xbox }
    
    public var digitalFormats: [DigitalEnum] {
        switch self {
        case .xbox: return []
        default: return [.xbox, .file]
        }
    }
    
}
