//
//  Mode+Enum.swift
//  autosavedSkeleton
//
//  Created by Asia Serrano on 1/13/24.
//

import Foundation

public enum ModeEnum: EnumProtocol {
        
    case single, two, multi
    
    public var value: String {
        switch self {
        case .single: return "Single-Player"
        case .two: return "Two-Player"
        case .multi: return "Multiplayer"
        }
    }
    
}
