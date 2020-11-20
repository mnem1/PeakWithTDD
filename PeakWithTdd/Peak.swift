//
//  Peak.swift
//  PeakWithTdd
//
//  Created by mnem on 11/20/20.
//

import Foundation

class Peak {
    func findPeak(in array: [Int]) -> Int {
        let arraySorted = array.sorted()
        return arraySorted.last ?? 0
    }
}
