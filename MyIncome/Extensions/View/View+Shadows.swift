//
//  View+Shadows.swift
//  MyIncome
//
//  Created by NJ Development on 01/01/26.
//

import SwiftUI

struct AppShadow {
    let color: Color
    let radius: CGFloat
    let x: CGFloat
    let y: CGFloat
}

extension View {
    func shadow(_ appShadow: AppShadow) -> some View {
        self.shadow(
            color: appShadow.color,
            radius: appShadow.radius,
            x: appShadow.x,
            y: appShadow.y
        )
    }
}

extension AppShadow {
    static let none: Self = .init(color: .black.opacity(0.0), radius: 0, x: 0, y: 0)
    static let light: Self = .init(color: .black.opacity(0.03), radius: 2, x: 0, y: 2)
    static let regular: Self = .init(color: .black.opacity(0.1), radius: 2, x: 0, y: 2)
    static let heavy: Self = .init(color: .black.opacity(0.2), radius: 2, x: 0, y: 2)
    static let top: Self = .init(color: .black.opacity(0.1), radius: 2, x: 0, y: -2)
}

#Preview {
    Preview()
}

fileprivate struct Preview: View {
    var body: some View {
        Text("Button Regular Shadow")
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.appTheme.cellBackground)
            .cornerRadius(.button)
            .shadow(.regular)
            .button(.press) {
                
            }
            .infinityFrame()
            .padding()
            .background(Color.appTheme.viewBackground)
    }
}
