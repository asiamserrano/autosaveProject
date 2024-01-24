//
//  String+Extension.swift
//  autosaveProject
//
//  Created by Asia Serrano on 1/12/24.
//

import Foundation

public extension String {
    
    static var empty: Self { .init() }
    
    static var random: Self {
        let uuid: Self = UUID().uuidString
        let strs: [Substring] = uuid.split(separator: "-")
        return strs.randomElement()!.description
    }

    var trimmed: Self {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    var canonicalized: Self {
        self.components(separatedBy: CharacterSet.alphanumerics.inverted)
            .joined()
            .lowercased()
    }
    
    var pluralize: Self {
        if let last: Character = self.canonicalized.last, last != "s" {
            return "\(self)s"
        } else { return self }
    }

}
