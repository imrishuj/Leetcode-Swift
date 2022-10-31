import UIKit

/* Given two positive integers a and b, return the number of common factors of a and b. An integer x is a common factor of a and b if x divides both a and b. */

func commonFactors(_ a: Int, _ b: Int) -> Int {
    let gcd = euclidGCD(a, b)
    var firstIndex = 2
    var count = 1
    while (firstIndex <= gcd) {
        if (a % firstIndex == 0) && (b % firstIndex == 0) {
            count += 1
        }
        firstIndex += 1
    }
    return count
}

func euclidGCD(_ first: Int, _ second: Int) -> Int {
    return second == 0 ? first : euclidGCD(second, first%second)
}

commonFactors(6, 12)

