//
//  MyIncomeApp.swift
//  MyIncome
//
//  Created by NJ Development on 01/01/26.
//

import SwiftUI

@main
struct MyIncomeApp: App {
    @AppStorage(UserDefaultKeys.isDarkMode) private var isDarkMode: Bool = true
    
    var body: some Scene {
        WindowGroup {
            AppStartingView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
