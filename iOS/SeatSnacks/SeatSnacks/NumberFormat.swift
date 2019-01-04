//
//  NumberFormat.swift
//  SeatSnacks
//
//  Created by Michael Williams on 1/3/19.
//  Copyright © 2019 Michael Williams. All rights reserved.
//

import Foundation

final class NumberFormat {
    
    private static let sharedNF = NumberFormat()
    
    private lazy var formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 2
        formatter.numberStyle = .currency
        formatter.currencyCode = "usd"
        return formatter
    }()
    
    private init() {}
    
    static func format(value: Int) -> String {
        let number = NSDecimalNumber(value: value)
        let numberDivByHundred = number.dividing(by: NSDecimalNumber(value: 100))
        guard let formattedString = sharedNF.formatter.string(from: numberDivByHundred) else {
            fatalError("\(value) cannot be formatted correctly")
        }
        return formattedString
    }
}
