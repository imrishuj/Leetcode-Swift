import UIKit

/* Given an integer n, return true if it is a power of two. Otherwise, return false.
 An integer n is a power of two, if there exists an integer x such that n == 2x.
 */

func isPowerOfTwo(_ n: Int) -> Bool {
    if n == 0 { return false }
    return (n & (n-1) == 0)
}

var n = 1
isPowerOfTwo(n)
