import UIKit

/* An ugly number is a positive integer that is divisible by a, b, or c.
 Given four integers n, a, b, and c, return the nth ugly number. */

func nthUglyNumber(_ n: Int, _ a: Int, _ b: Int, _ c: Int) -> Int {
    var low = 1
    var high = 10000000000
    var result = 0
    while(low <= high) {
        let mid = low + (high - low)/2
        let count = mid/a + mid/b + mid/c - mid/lcm(a, b) - mid/lcm(b, c) - mid/lcm(a, c) + mid/lcm(a, lcm(b, c))
        if(count >= n) {
            result = mid
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return low
}

func euclidGCD(_ first: Int, _ second: Int) -> Int {
    return second == 0 ? first : euclidGCD(second, first%second)
}

func lcm(_ first: Int, _ second: Int) -> Int {
    return first * second / euclidGCD(first, second)
}

//var n = 3, a = 2, b = 3, c = 5
//var n = 4, a = 2, b = 3, c = 4
var n = 5, a = 2, b = 11, c = 13
nthUglyNumber(n,a,b,c)
