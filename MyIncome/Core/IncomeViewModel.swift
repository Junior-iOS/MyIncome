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
    private var cancellables = Set<AnyCancellable>()
    
    var appName : String {
        appInfoStore.name
    }
    
    var shouldShowOvertimeCheck: Bool {
        (hourlyInput.hoursPerWeek ?? 0) > hourlyInput.hourPerWeekLimitForOvertime
    }
    
    init() {
        setSubscribers()
    }
    
    private func setSubscribers() {
        $salaryInput
            .receive(on: DispatchQueue.main)
            .sink { [weak self] salaryInput in
                guard let self else { return }
                salaryOutput = incomeStore.getSalaryOutput(for: salaryInput)
            }
            .store(in: &cancellables)
        
        $hourlyInput
            .receive(on: DispatchQueue.main)
            .sink { [weak self] hourlyInput in
                guard let self else { return }
                hourlyOutput = incomeStore.getHourlyOutput(for: hourlyInput)
            }
            .store(in: &cancellables)
    }
}
