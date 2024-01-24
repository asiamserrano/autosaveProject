//
//  Menu+Enum.swift
//  autosavedSkeleton
//
//  Created by Asia Serrano on 1/12/24.
//

import Foundation

public enum MenuEnum: EnumProtocol {
    
    case library
    case wishlist
//    case properties
    
    var icon: String {
        switch self {
        case .library: return "list.bullet.below.rectangle"
        case .wishlist: return "list.star"
//        case .properties: return "list.bullet.indent"
        }
    }
    
}
