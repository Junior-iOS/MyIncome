//
//  Container+Registration.swift
//  MyIncome
//
//  Created by NJ Development on 01/01/26.
//

import Foundation
import Factory

extension Container {
    var appInfoStore: Factory<AppInfoLiveStore> {
        self { MainActor.assumeIsolated { AppInfoLiveStore() } }.singleton
    }
    
    var incomeStore: Factory<IncomeStore> {
        self { MainActor.assumeIsolated { IncomeLiveStore() } }.singleton
    }
}
