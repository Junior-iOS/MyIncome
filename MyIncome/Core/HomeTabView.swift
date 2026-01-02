//
//  HomeTabView.swift
//  MyIncome
//
//  Created by NJ Development on 01/01/26.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        TabView {
            incomeTabItemView
            settingsTabItemView
        }
    }
}

private extension HomeTabView {
    var incomeTabItemView: some View {
        NavigationStack {
            IncomeView()
        }
        .tabItem {
            Image(icon: .dollarSignSquare)
            Text("Income")
        }
    }
    
    var settingsTabItemView: some View {
        SettingsView()
            .tabItem {
                Image(icon: .gearShapeFill)
                Text("Settings")
            }
    }
}

#Preview {
    HomeTabView()
}
