//
//  HourlyOutput.swift
//  MyIncome
//
//  Created by NJ Development on 01/01/26.
//


struct HourlyOutput {
    let takeHomePay: Pay
    let grossPay: Pay
    
    init(
        takeHomePay: Pay = .init(incomeType: .takeHome),
        grossPay: Pay = .init()
    ) {
        self.takeHomePay = takeHomePay
        self.grossPay = grossPay
    }
}