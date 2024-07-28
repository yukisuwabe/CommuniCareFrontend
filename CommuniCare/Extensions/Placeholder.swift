//
//  Placeholder.swift
//  CommuniCare
//
//  Created by Hsia Lu wu on 6/27/24.
//

import Foundation
import SwiftUI

extension View {
    func emailPlaceholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
