//
//  View+Extension.swift
//  autosaveProject
//
//  Created by Asia Serrano on 1/12/24.
//

import Foundation

import Foundation
import SwiftUI

public extension View {
    
    @ViewBuilder
    func MenuItem(_ title: String, _ icon: String? = nil) -> some View {
        HStack {
            Text(title)
            if let i: String = icon { IconView(i) }
        }
    }
    
//    @ViewBuilder
//    func AddSectionHeaderView(_ iter: KeyValuePair, _ bool: Bool) -> some View {
//        HStack(alignment: .center, spacing: 5) {
//            Text(iter.value.pluralize).font(.footnote)
//            IconView("plus.circle.fill", .green, 15).hide(bool)
//        }
//    }
    
    @ViewBuilder
    func CheckMarkView(_ str: String, _ bool: Bool) -> some View {
        HStack(alignment: .center) {
            Text(str)
            Spacer()
            IconView("checkmark").hide(!bool)
        }
    }
    
    @ViewBuilder
    func ClearableTextField(_ binding: Binding<String>, keyboard: UIKeyboardType = .alphabet) -> some View {
        HStack(alignment: .center) {
            let text: String = binding.wrappedValue
            
            TextField(text, text: binding, axis: .vertical)
                .keyboardType(keyboard)
                .disableAutocorrection(true)
                .multilineTextAlignment(.leading)
            
            if !text.canonicalized.isEmpty {
                Button(action: {
                    binding.wrappedValue = .init()
                }, label: {
                    IconView("xmark.circle.fill")
                }).buttonStyle(PlainButtonStyle())
            }
        }
    }
    
    func hide(_ bool: Bool) -> some View {
        modifier(HideModifier(bool))
    }
    
    func italicize(_ bool: Bool, _ color: Color) -> some View {
        modifier(ItalicizedModifier(bool, color))
    }
    
}
