//
//  Property+Enum.swift
//  autosaveProject
//
//  Created by Asia Serrano on 1/23/24.
//

import Foundation

public enum PropertyBuilderEnum: EnumBuilderProtocol {
    
    public static var allCases: [Self] {
        PropertyEnum.all.flatMap { property in
            switch property {
            case .input: InputEnum.all.map { Self.input($0) }
            case .mode: ModeEnum.all.map { Self.mode($0) }
            case .platform: PlatformBuilderEnum.all.map { Self.platform($0) }
            case .format: FormatBuilderEnum.all.map { Self.format($0) }
            }
        }
    }
    
    case input(InputEnum)
    case platform(PlatformBuilderEnum)
    case format(FormatBuilderEnum)
    case mode(ModeEnum)

    public var child: Pair {
        switch self {
        case .input(let i): return .init(key: i.key, value: i.value)
        case .platform(let p): return .init(key: p.key, value: p.value)
        case .format(let f): return .init(key: f.key, value: f.value)
        case .mode(let m): return .init(key: m.key, value: m.value)
        }
    }
    
    public var parent: Pair {
        var property: PropertyEnum {
            switch self {
            case .input(_): return .input
            case .platform(_): return .platform
            case .format(_): return .format
            case .mode(_): return .mode
            }
        }
        
        return .init(key: property.key, value: property.value)
    }
    
}
