//
//  Platform+Protocol.swift
//  autosaveProject
//
//  Created by Asia Serrano on 1/23/24.
//

import Foundation

public protocol PlatformProtocol: EnumProtocol {
    
    var platformEnum: PlatformEnum { get }
    var physicalEnum: PhysicalEnum { get }
    var digitalEnums: [DigitalEnum] { get }
    
}

extension PlatformProtocol {
    
    public var physicalEnum: PhysicalEnum { .disc }
    
    public var digitalEnums: [DigitalEnum] { .init() }
    
}
