//
//  Nintendo+Enum.swift
//  autosavedSkeleton
//
//  Created by Asia Serrano on 1/13/24.
//

import Foundation

public enum NintendoEnum: PlatformProtocol {
            
    case snes, `switch`, wii, wiiu, gamecube, n3ds
    
    public var value: String {
        let name: String = self.platformEnum.value
        switch self {
        case .snes: return "Super \(name) Entertainment System"
        case .switch: return "\(name) Switch"
        case .wii: return "Wii"
        case .wiiu : return "Wii U"
        case .gamecube: return "GameCube"
        case .n3ds: return "\(name) 3DS"
        }
    }
    
    public var platformEnum: PlatformEnum { .nintendo }
    
    public var physicalFormat: PhysicalEnum {
        switch self {
        case .snes: return .cartridge
        case .switch, .n3ds: return .card
        default: return .disc
        }
    }

    public var digitalFormats: [DigitalEnum] {
        switch self {
        case .n3ds, .gamecube, .snes: return []
        default: return [.nintendo, .file]
        }
    }
    
}

