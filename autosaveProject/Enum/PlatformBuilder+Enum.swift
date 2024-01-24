//
//  PlatformBuilder+Enum.swift
//  autosaveProject
//
//  Created by Asia Serrano on 1/23/24.
//

import Foundation

public enum PlatformBuilderEnum: EnumBuilderProtocol {
    
    public static var allCases: [Self] {
        PlatformEnum.all.flatMap { platform in
            switch platform {
            case .nintendo: NintendoEnum.all.map { Self.nintendo($0) }
            case .os: OSEnum.all.map { Self.os($0) }
            case .playstation: PlayStationEnum.all.map { Self.playstation($0) }
            case .xbox: XboxEnum.all.map { Self.xbox($0) }
            }
        }
    }
    
    case nintendo(NintendoEnum)
    case os(OSEnum)
    case playstation(PlayStationEnum)
    case xbox(XboxEnum)
    
    public var child: Pair {
        switch self {
        case .nintendo(let n):
            return .init(key: n.key, value: n.value)
        case .os(let o):
            return .init(key: o.key, value: o.value)
        case .playstation(let p):
            return .init(key: p.key, value: p.value)
        case .xbox(let x):
            return .init(key: x.key, value: x.value)
        }
    }
    
    public var parent: Pair {
        var platform: PlatformEnum {
            switch self {
            case .nintendo(_): return .nintendo
            case .os(_): return .os
            case .playstation(_): return .playstation
            case .xbox(_): return .xbox
            }
        }
        
        return .init(key: platform.key, value: platform.value)
    }
    
}
