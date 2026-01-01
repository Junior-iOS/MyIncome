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
            .foregroundStyle(.gray)
            .multilineTextAlignment(.center)
    }
    
    var getStartedButton : some View {
        Button {
            shouldShowWelcomeView = false
        } label: {
            Text("Get Started")
        }
    }
}

#Preview {
    WelcomeView(shouldShowWelcomeView: .constant(true))
}
