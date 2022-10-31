import UIKit
import Foundation

/* Given an integer n, return a list of all simplified fractions between 0 and 1 (exclusive) such that the denominator is less-than-or-equal-to n. You can return the answer in any order. */

func simplifiedFractions(_ n: Int) -> [String] {
    guard n > 1 else { return [] }
    var fractionStrs = [String]()
    var numIndex = 1
    while(numIndex <= n) {
        var denomIndex = numIndex + 1
        while(denomIndex <= n) {
            if euclidGCD(numIndex, denomIndex) == 1 {
                fractionStrs.append("\(numIndex)/\(denomIndex)")
            }
            denomIndex += 1
        }
        numIndex += 1
    }
    return fractionStrs
}

func euclidGCD(_ first: Int, _ second: Int) -> Int {
    return second == 0 ? first : euclidGCD(second, first%second)
}

simplifiedFractions(0)
simplifiedFractions(1)
simplifiedFractions(2)
simplifiedFractions(3)
simplifiedFractions(20)
simplifiedFractions(30)

