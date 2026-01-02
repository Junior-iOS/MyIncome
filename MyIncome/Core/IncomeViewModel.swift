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
    
    @Published var incomePickerValue: IncomePickerView.IncomeType = .salary
    @Published var salaryInput: SalaryInput = .init()
    @Published var salaryOutput: SalaryOutput = .init()
    @Published var hourlyInput: HourlyInput = .init()
    @Published var hourlyOutput: HourlyOutput = .init()
    
    var appName : String {
        appInfoStore.name
    }
    
    var shouldShowOvertimeCheck: Bool {
        (hourlyInput.hoursPerWeek ?? 0) > hourlyInput.hourPerWeekLimitForOvertime
    }
}
