//
//  Game+Enum.swift
//  autosavedSkeleton
//
//  Created by Asia Serrano on 1/12/24.
//

import Foundation

public enum GameEnum: EnumProtocol {
    case title, release
    
    public var value: String {
        switch self {
        case .title: return "Title"
        case .release: return "Release Date"
        }
    }
    
}
