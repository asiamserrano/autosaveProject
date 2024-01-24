//
//  OS+Enum.swift
//  autosavedSkeleton
//
//  Created by Asia Serrano on 1/13/24.
//

import Foundation

public enum OSEnum: PlatformProtocol {

    case win, mac
    
    public var value: String {
        switch self {
        case .win: return "Microsoft Windows"
        case .mac: return "Apple macOS"
        }
    }
    
    public var platformEnum: PlatformEnum { .os }
    
    public var digitalFormats: [DigitalEnum] {
        [.steam, .origin, .file]
    }
    
}
