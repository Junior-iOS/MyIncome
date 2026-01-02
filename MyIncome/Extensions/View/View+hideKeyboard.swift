//
//  View+hideKeyboard.swift
//  MyIncome
//
//  Created by NJ Development on 02/01/26.
//

import SwiftUI

extension View {
    @ViewBuilder
    func hideKeyboardOnTap() -> some View {
        self.onTapGesture {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
}
