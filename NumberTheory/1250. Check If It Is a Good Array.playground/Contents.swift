import UIKit

/* Given an array nums of positive integers. Your task is to select some subset of nums, multiply each element by an integer and add all these numbers. The array is said to be good if you can obtain a sum of 1 from the array by any possible subset and multiplicand.
 
 Return True if the array is good otherwise return False. */

func isGoodArray(_ nums: [Int]) -> Bool {
    var gcd = nums[0]
    for index in 0..<nums.count {
        gcd = euclidGCD(gcd, nums[index])
    }
    return gcd == 1 ? true : false
}

func euclidGCD(_ first: Int, _ second: Int) -> Int {
    return second == 0 ? first : euclidGCD(second, first%second)
}

var nums = [12,5,7,23]
nums = [29,6,10]
nums = [3,6]
isGoodArray(nums)

