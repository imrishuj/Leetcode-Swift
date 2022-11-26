import UIKit

/* You are given an integer array nums consisting of 2 * n integers.
 You need to divide nums into n pairs such that:
 Each element belongs to exactly one pair.
 The elements present in a pair are equal.
 Return true if nums can be divided into n pairs, otherwise return false.*/

func divideArray(_ nums: [Int]) -> Bool {
    var countDict = [Int: Int]()
    nums.forEach({ countDict[$0, default: 0] += 1 })
    if let _ = countDict.first(where: { $0.value & 1 != 0 }) {
        return false
    }
    return true
}

var nums = [3,2,3,2,2,2]
nums = [1,2,3,4]
divideArray(nums)
