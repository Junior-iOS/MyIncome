//
//  View+inputTextField.swift
//  MyIncome
//
//  Created by NJ Development on 02/01/26.
//

import Foundation
import SwiftUI

extension View {
    func inputTextField() -> some View {
        self
            .keyboardType(.decimalPad)
            .padding(12)
            .frame(maxWidth: .infinity)
            .background(Color.appTheme.cellBackground)
            .cornerRadius(.textField)
            .shadow(.regular)
    }
}
