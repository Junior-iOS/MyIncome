//
//  View+Image.swift
//  MyIncome
//
//  Created by NJ Development on 02/01/26.
//

import Foundation
import SwiftUI

public enum Icon: String {
    case gearShapeFill = "gearshape.fill"
    case dollarSignSquare = "dollarsign.square"
    case dollarSignCircle = "dollarsign.circle"
    case checkmarkSquare = "checkmark.square"
    case square = "square"
}

public extension Image {
    init(icon: Icon) {
        self = Image(systemName: icon.rawValue)
    }
}
