//
//  autosaveProjectApp.swift
//  autosaveProject
//
//  Created by Asia Serrano on 1/23/24.
//

import SwiftUI
import SwiftData

public let appScreenWidth: CGFloat = UIScreen.main.bounds.width
public let appScreenHeight: CGFloat = UIScreen.main.bounds.height
public let appDefaultColor: Color = .blue
public let appSecondaryColor: Color = .pink

@main
struct autosaveProjectApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
