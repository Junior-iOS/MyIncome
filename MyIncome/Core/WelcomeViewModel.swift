//
//  WelcomeViewModel.swift
//  MyIncome
//
//  Created by NJ Development on 01/01/26.
//

import Foundation
import Combine
import Factory

@MainActor
final class WelcomeViewModel: ObservableObject {
    @Injected(\.appInfoStore) var appInfoStore
    
    func getAppName() -> String {
        appInfoStore.name
    }
}
