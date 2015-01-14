//
//  StringCalculator.swift
//  StringCalculatorKata
//
//  Created by Brigitte Michau on 2015/01/14.
//  Copyright (c) 2015 Fontera. All rights reserved.
//

import Foundation

class StringCalculator {
    
    func add(string : String) -> Int {
        
        if isEmpty(string) { return 0 }
        
        let array = string.componentsSeparatedByString(",")
        let intArray = array.map { $0.toInt() }
        
        return reduce(intArray, 0) { $0 + $1! }
    }
}