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
        
        var result = 0
        let cnt = countElements(string)
        
        if cnt != 0 {
            let oddNumbers = Array(filter(1...cnt) {$0 % 2 != 0})
            
            if contains(oddNumbers, cnt) {
                let array = string.componentsSeparatedByString(",")
                var intArray = [Int]()
                
                for value in array {
                    intArray.append(value.toInt()!)
                }
                result = reduce(intArray, 0) {$0 + $1}
            }
        }
        return result
    }
}