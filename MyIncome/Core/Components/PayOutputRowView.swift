//
//  PayOutputRowView.swift
//  MyIncome
//
//  Created by NJ Development on 02/01/26.
//

import SwiftUI

struct PayOutputRowView: View {
    let name: String
    let output: Double
    
    var body: some View {
        HStack(spacing: 16) {
            nameView
            Spacer()
            outputView
        }
        .frame(maxWidth: .infinity)
        .padding(12)
        .background(Color.appTheme.cellBackground)
        .cornerRadius(.cell)
    }
}

fileprivate extension PayOutputRowView {
    var nameView: some View {
        Text(name)
            .font(.callout)
            .foregroundColor(.appTheme.secondaryText)
    }
    
    var outputView: some View {
        Text("$ \(output.formattedAsWholeCurrencyOrInvalid)")
            .foregroundStyle(Color.appTheme.accent)
            .fontWeight(.semibold)
    }
}

#Preview {
    PayOutputRowView(name: "Weekly", output: 1_117)
        .padding()
        .infinityFrame()
        .background(Color.appTheme.viewBackground)
}
