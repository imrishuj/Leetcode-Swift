import UIKit

/* A bit flip of a number x is choosing a bit in the binary representation of x and flipping it from either 0 to 1 or 1 to 0.
 Given two integers start and goal, return the minimum number of bit flips to convert start to goal. */

func minBitFlips(_ start: Int, _ goal: Int) -> Int {
    var minBit = 0
    var xor = start ^ goal
    while(xor != 0) {
        xor &= xor-1
        minBit += 1
    }
    return minBit
}

var start = 10, goal = 7
minBitFlips(start, goal)
