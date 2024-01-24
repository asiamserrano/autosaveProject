//
//  ContentView.swift
//  autosaveProject
//
//  Created by Asia Serrano on 1/23/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) private var modelContext
    
    @Query private var items: [Property]

    var body: some View {
        NavigationStack {
            List {
                ForEach(self.items) { item in
                    Text(item.toString)
                }
            }
        }
    }
    
}

#Preview {
    
    let previewModelContainer: ModelContainer = {
        let container: ModelContainer = .preview
        
        var props: [Property] = [
            .mode(.single),
            .input(.genre, "my Genre"),
            .format(.digital),
            .format(.digital(.steam)),
            .platform(.nintendo),
            .platform(.nintendo(.snes))
        ]
        
        props.forEach { container.mainContext.insert($0) }
        
        return container
    }()
    
    return ContentView()
        .modelContainer(previewModelContainer)
}
