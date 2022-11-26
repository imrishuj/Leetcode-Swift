import UIKit

/* Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.*/

func missingNumber(_ nums: [Int]) -> Int {
    return (0...nums.count).reduce(nums.reduce(0, ^), ^)
}

var nums = [3,0,1]
nums = [0,1]
nums = [9,6,4,2,3,5,7,0,1]
missingNumber(nums)
