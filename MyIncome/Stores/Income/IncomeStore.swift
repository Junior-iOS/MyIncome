//
//  IncomeStore.swift
//  MyIncome
//
//  Created by NJ Development on 01/01/26.
//

import Foundation

protocol IncomeStore {
    func getSalaryOutput(for salaryInput: SalaryInput) -> SalaryOutput
    func getHourlyOutput(for hourlyInput: HourlyInput) -> HourlyOutput
}
