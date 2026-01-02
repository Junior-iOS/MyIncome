//
//  IncomeViewModel.swift
//  MyIncome
//
//  Created by NJ Development on 01/01/26.
//

import Foundation
import Combine
import Factory

@MainActor
final class IncomeViewModel: ObservableObject {
    @Injected(\.incomeStore) var incomeStore
    @Injected(\.appInfoStore) var appInfoStore
    
    var appName : String {
        appInfoStore.name
    }
}
