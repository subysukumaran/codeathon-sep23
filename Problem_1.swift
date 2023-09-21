//
//  Problem_1.swift
//  CoPilotTest
//
//  Created by Suby Sukumaran on 21/09/23.
//

import Foundation

func sortStringByFrequency(_ str: String) -> String {
    var charCounts = [Character: Int]()
    for char in str {
        charCounts[char, default: 0] += 1
    }
    let sortedChars = charCounts.sorted { $0.value > $1.value }
    var result = ""
    for (char, count) in sortedChars {
        result += String(repeating: char, count: count)
    }
    return result
}
