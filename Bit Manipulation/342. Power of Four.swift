import UIKit

/* Given an integer n, return true if it is a power of four. Otherwise, return false.
 An integer n is a power of four, if there exists an integer x such that n == 4x
 */

func isPowerOfFour(_ n: Int) -> Bool {
    if n == 1 { return true }
    return (n & (n-1) == 0) && (n % 10 == 4 || n % 10 == 6)
}

var n = 16
isPowerOfFour(n)
