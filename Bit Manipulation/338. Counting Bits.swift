import UIKit

/* Given an integer n, return an array ans of length n + 1 such that for each i (0 <= i <= n), ans[i] is the number of 1's in the binary representation of i. */

func countBits(_ n: Int) -> [Int] {
    var countBits = Array(repeating: 0, count: n+1)
    for item in 0...n {
        countBits[item] = item.nonzeroBitCount
    }
    return countBits
}

var n = 2
countBits(n)
