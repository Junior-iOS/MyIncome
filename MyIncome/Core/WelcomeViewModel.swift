//
//  WelcomeViewModel.swift
//  MyIncome
//
//  Created by NJ Development on 01/01/26.
//

import Foundation
import Combine

@MainActor
final class WelcomeViewModel: ObservableObject {
    func getAppName() -> String {
        "My Income"
    }
}
