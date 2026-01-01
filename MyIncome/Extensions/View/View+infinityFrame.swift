//
//  View+infinityFrame.swift
//  MyIncome
//
//  Created by NJ Development on 01/01/26.
//

import SwiftUI

extension View {
    func infinityFrame() -> some View {
        self.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
