//
//  Peak.swift
//  PeakWithTdd
//
//  Created by mnem on 11/20/20.
//

import Foundation

class Peak {
    func findPeak(in array: [Int]) -> Int? {
        guard !array.isEmpty else {
            return nil
        }
        
        var maxElement = 0
        var left = 0
        var right = array.count - 1
        var middle = 0
        
        while left <= right {
            middle = Int(floor(Double(left + right) / 2.0))
            if array[middle] < array[middle + 1] {
                left = middle + 1
                if maxElement < array[middle] {
                    maxElement = array[middle]
                }
            } else if array[middle] < array[middle - 1] {
                right = middle - 1
                if maxElement < array[middle] {
                    maxElement = array[middle]
                }
            } else {
                maxElement = array[middle]
                break
            }
        }
        return maxElement
    }
}
