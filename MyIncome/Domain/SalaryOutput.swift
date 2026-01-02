//
//  SalaryOutput.swift
//  MyIncome
//
//  Created by NJ Development on 01/01/26.
//

import Foundation

struct SalaryOutput {
    let hourlyWage: Double
    let takeHomePay: Pay
    let grossPay: Pay
    
    init(
        hourlyWage: Double = 0.0,
        takeHomePay: Pay = .init(incomeType: .takeHome),
        grossPay: Pay = .init()
    ) {
        self.hourlyWage = hourlyWage
        self.takeHomePay = takeHomePay
        self.grossPay = grossPay
    }
}
