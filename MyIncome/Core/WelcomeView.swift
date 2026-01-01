//
//  WelcomeView.swift
//  MyIncome
//
//  Created by NJ Development on 01/01/26.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var shouldShowWelcomeView: Bool
    @StateObject private var viewModel = WelcomeViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            title
            Spacer()
            
            VStack(spacing: 0) {
                welcomeImage
                welcomeText
            }
            
            Spacer()
            getStartedButton
        }
        .padding()
        .infinityFrame()
        .background(Color.appTheme.viewBackground)
    }
}

private extension WelcomeView {
    var title : some View {
        Text(viewModel.getAppName())
            .font(.title)
            .fontWeight(.bold)
    }
    
    var welcomeImage : some View {
        Image(.welcome)
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity)
    }
    
    var welcomeText : some View {
        Text("Effortlessly calculate your income.\nLet's get started!")
            .font(.title3)
            .fontWeight(.medium)
            .foregroundStyle(Color.appTheme.secondaryText)
            .multilineTextAlignment(.center)
    }
    
    var getStartedButton : some View {
        Text("Get started")
            .primaryButton()
            .button(.press) {
                shouldShowWelcomeView = false
            }
    }
}

#Preview {
    WelcomeView(shouldShowWelcomeView: .constant(true))
}
