//
//  Model.swift
//  TipCalculator
//
//  Created by Julio Estrada on 3/5/17.
//  Copyright © 2017 julioest. All rights reserved.
//

import Foundation

class Model {

    /*  Basic Logic
    
     1. Take input
     2. Calculate new values
     3. Return as strings for labels

     */

    // Logic
    // Accept subtotal as String
    // Accept tipPercent as Int

    // Convert subtotal to NSDecimal for calculation
    // Convert tipPercent to NSDecimal for calculation

    // Calculate tipAmount
    // Calculate totalAmount

    // Convert subtotal to Currency
    // Convert tipAmount to Currency

    var subtotalFromTextField = "0.00"
    var tipPercentFromSlider = 15

    // MARK: - Decimals for calculation
    var subtotalAsDecimal: NSDecimalNumber {
        return NSDecimalNumber(string: subtotalFromTextField)
    }

    var tipPercent: NSDecimalNumber {
        return NSDecimalNumber(value: Double(tipPercentFromSlider)/100)
    }

    // subtotal * tipPercent = tipAmount
    var tipAmount: NSDecimalNumber {
        return subtotalAsDecimal.multiplying(by: tipPercent)
    }

    // subtotal + tipAmount = totalAmount
    var totalAmount: NSDecimalNumber {
        return subtotalAsDecimal.adding(tipAmount)
    }

    // MARK: - Convert to currency
    let formatter = NumberFormatter()

    var subtotalAsCurrency: String {
        formatter.numberStyle = .currency
        return formatter.string(from: subtotalAsDecimal as NSNumber)!
    }

    var tipAmountAsCurrency: String {
        formatter.numberStyle = .currency
        return formatter.string(from: tipAmount as NSNumber)!
    }

    var totalAmountAsCurrency: String {
        formatter.numberStyle = .currency
        return formatter.string(from: totalAmount as NSNumber)!
    }


}
























