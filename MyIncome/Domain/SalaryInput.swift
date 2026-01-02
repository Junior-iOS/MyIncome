//
//  SalaryInput.swift
//  MyIncome
//
//  Created by NJ Development on 01/01/26.
//

import Foundation

struct SalaryInput {
    var yearlyGross: Double?
    var takeHomePercentage: Double?
    
    init(yearlyGross: Double? = nil, takeHomePercentage: Double? = nil) {
        self.yearlyGross = yearlyGross
        self.takeHomePercentage = takeHomePercentage
    }
}
