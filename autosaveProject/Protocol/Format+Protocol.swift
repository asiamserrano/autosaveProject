//
//  Format+Protocol.swift
//  autosaveProject
//
//  Created by Asia Serrano on 1/23/24.
//

import Foundation

public protocol FormatProtocol: EnumProtocol {
    
    var formatEnum: FormatEnum { get }

}

extension FormatProtocol {
    
    var icon: String {
        self.formatEnum.icon
    }
    
}
