//
//  Hide+Modifier.swift
//  autosaveProject
//
//  Created by Asia Serrano on 1/12/24.
//

import Foundation
import SwiftUI

struct HideModifier: ViewModifier {
    
    let isHidden: Bool
    
    init(_ hidden: Bool) {
        self.isHidden = hidden
    }
    
    func body(content: Content) -> some View {
        content
            .opacity(self.isHidden ? 0 : 1)
            .disabled(self.isHidden)
    }
    
}
