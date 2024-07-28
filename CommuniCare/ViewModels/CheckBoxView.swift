//
//  CheckBoxView.swift
//  CommuniCare
//
//  Created by Hsia Lu wu on 7/14/24.
//

import Foundation
import SwiftUI

struct CheckBoxView<T: Hashable>: View {
    @Binding var isChecked: Set<T>
    var value: T
    var text: String
    
    var body: some View {
        Button(action: {
            if isChecked.contains(value) {
                isChecked.remove(value)
            } else {
                isChecked.insert(value)
            }
        }) {
            HStack {
                Image(systemName: isChecked.contains(value) ? "checkmark.square" : "square")
                Text(text)
            }
            .foregroundColor(.black)
        }
        .padding(.vertical, 2)
    }
}
