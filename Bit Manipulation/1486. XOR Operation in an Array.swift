import UIKit

/* You are given an integer n and an integer start.
 Define an array nums where nums[i] = start + 2 * i (0-indexed) and n == nums.length.
 Return the bitwise XOR of all elements of nums. */

func xorOperation(_ n: Int, _ start: Int) -> Int {
    var bitwiseXOR = 0
    for index in 0...n-1 {
        bitwiseXOR ^= (2*index + start)
    }
    return bitwiseXOR
}

var  n = 4, start = 3
xorOperation(4, 3)
