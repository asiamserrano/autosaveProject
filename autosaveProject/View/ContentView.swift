//
//  ContentView.swift
//  autosaveProject
//
//  Created by Asia Serrano on 1/23/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
//    @Environment(\.modelContext) private var modelContext
//    @Query private var items: [Item]

    var body: some View {
        NavigationStack {
            List {
                ForEach(PropertyBuilderEnum.all) { item in
                    Text("key: \(item.key) | value: \(item.value)")
                }
            }
        }
    }
    
}

#Preview {
    ContentView()
//        .modelContainer(for: Item.self, inMemory: true)
}
