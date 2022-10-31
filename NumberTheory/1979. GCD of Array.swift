import UIKit

/* Given two positive integers a and b, return the number of common factors of a and b. An integer x is a common factor of a and b if x divides both a and b. */

func findGCD(_ nums: [Int]) -> Int {
    var minimumNum = nums[0]
    var maximumNum = nums[0]
    var firstindex = 0
    while firstindex < nums.count {
        if nums[firstindex] < minimumNum {
            minimumNum = nums[firstindex]
        }
        if nums[firstindex] > maximumNum {
            maximumNum = nums[firstindex]
        }
        firstindex += 1
    }
    return euclidGCD(minimumNum, maximumNum)
}

func euclidGCD(_ first: Int, _ second: Int) -> Int {
    return second == 0 ? first : euclidGCD(second, first%second)
}

findGCD([2,5,6,9,10])
