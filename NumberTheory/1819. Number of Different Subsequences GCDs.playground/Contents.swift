import UIKit

/* You are given an array nums that consists of positive integers.
 
 The GCD of a sequence of numbers is defined as the greatest integer that divides all the numbers in the sequence evenly.

 For example, the GCD of the sequence [4,6,16] is 2.
 A subsequence of an array is a sequence that can be formed by removing some elements (possibly none) of the array.

 For example, [2,5,10] is a subsequence of [1,2,1,2,4,1,5,10].
 
 Return the number of different GCDs among all non-empty subsequences of nums. */

func countDifferentSubsequenceGCDs(_ nums: [Int]) -> Int {
    var factorDict = [Int: Int]()
    var count = 0
    for index in 0..<nums.count {
        var jindex = 1
        while (jindex * jindex <= nums[index]) {
            if (nums[index] % jindex == 0) {
                let factor1 = jindex
                let factor2 = nums[index] / jindex
                factorDict[factor1] = euclidGCD(factorDict[factor1] ?? 0, nums[index])
                factorDict[factor2] = euclidGCD(factorDict[factor2] ?? 0, nums[index])
            }
            jindex += 1
        }
    }
    for data in factorDict {
        if data.key == data.value {
            count += 1
        }
    }
    return count
}

func euclidGCD(_ first: Int, _ second: Int) -> Int {
    return second == 0 ? first : euclidGCD(second, first%second)
}

var nums = [6,10,3]
countDifferentSubsequenceGCDs(nums)
