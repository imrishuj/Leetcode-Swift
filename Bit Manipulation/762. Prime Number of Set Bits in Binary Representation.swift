import UIKit

/* Given two integers left and right, return the count of numbers in the inclusive range [left, right] having a prime number of set bits in their binary representation.
 Recall that the number of set bits an integer has is the number of 1's present when written in binary.
 For example, 21 written in binary is 10101, which has 3 set bits.
 */

func countPrimeSetBits(_ left: Int, _ right: Int) -> Int {
    var primeCount = 0
    for index in left...right {
        if isPrime(index.nonzeroBitCount) {
            primeCount += 1
        }
    }
    return primeCount
}

func isPrime(_ num: Int)-> Bool{
    switch num {
    case 2,3,5,7,11,13,17,19: // L and R are at most 1,000,000, so the numbers can be at most 20 bits.
        return true
    default:
        return false
    }
}

var left = 6, right = 10
left = 10
right = 15
countPrimeSetBits(left, right)
