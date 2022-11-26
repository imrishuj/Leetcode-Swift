import UIKit

/* Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
 You must implement a solution with a linear runtime complexity and use only constant extra space. */

func singleNumber(_ nums: [Int]) -> Int {
    var result = 0
    nums.forEach({ result ^= $0 })
    return result
}

var nums = [2,2,1]
nums = [4,1,2,1,2]
nums = [1]
singleNumber(nums)
