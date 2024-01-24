//
//  PlayStation+Enum.swift
//  autosavedSkeleton
//
//  Created by Asia Serrano on 1/13/24.
//

import Foundation

public enum PlayStationEnum: PlatformProtocol {
    
    case ps1, ps2, ps3, ps4, ps5, psp
    
    public var value: String {
        
        var end: String {
            if let ch: Character = self.key.last, let i: Int = Int(String(ch)) {
                return i == 1 ? .empty : i.description
            } else { return "Portable" }
        }
        
        return "\(self.platformEnum.value) \(end)".trimmed
    }
    
    public var platformEnum: PlatformEnum { .playstation }
    
    public var digitalFormats: [DigitalEnum] {
        switch self {
        case .psp: return [.file]
        case .ps1, .ps2: return []
        default: return [.psn, .file]
        }
    }
    
}
