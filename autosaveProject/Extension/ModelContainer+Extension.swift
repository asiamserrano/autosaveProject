//
//  ModelContainer+Extension.swift
//  autosaveProject
//
//  Created by Asia Serrano on 12/16/23.
//

import Foundation
import SwiftData

extension ModelContainer {
    
    private convenience init(memory: Bool) {
        do {
            let schema = Schema([ Item.self ])
            let config: ModelConfiguration = .init(schema: schema, isStoredInMemoryOnly: memory)
            try self.init(for: schema, configurations: [config])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }
    
    public static let main: ModelContainer = .init(memory: false)
    
    public static let preview: ModelContainer = .init(memory: true)
    
}
