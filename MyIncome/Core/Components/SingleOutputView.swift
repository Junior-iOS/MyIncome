//
//  SingleOutputView.swift
//  MyIncome
//
//  Created by NJ Development on 02/01/26.
//

import SwiftUI

struct SingleOutputView: View {
    let name: String
    let output: Double
    
    var body: some View {
        HStack {
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

fileprivate extension SingleOutputView {
    var nameView: some View {
        Text(name)
            .font(.callout)
            .foregroundColor(.appTheme.secondaryText)
    }
    
    var outputView: some View {
        Text("$ \(output.formattedWithTwoDecimals)")
            .foregroundStyle(Color.appTheme.accent)
            .fontWeight(.semibold)
    }
}

#Preview {
    SingleOutputView(name: "Hourly Wage", output: 25.50)
        .padding()
        .infinityFrame()
        .background(Color.appTheme.viewBackground)
}
