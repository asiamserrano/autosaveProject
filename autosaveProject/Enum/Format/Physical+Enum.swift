//
//  Physical+Enum.swift
//  autosavedSkeleton
//
//  Created by Asia Serrano on 1/13/24.
//

import Foundation

public enum PhysicalEnum: FormatProtocol {
    
    public var formatEnum: FormatEnum { .physical }

    case disc, cartridge, card
}
