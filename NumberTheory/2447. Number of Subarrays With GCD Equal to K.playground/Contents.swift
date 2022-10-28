import UIKit

/* Given an integer array nums and an integer k, return the number of subarrays of nums where the greatest common divisor of the subarray's elements is k. A subarray is a contiguous non-empty sequence of elements within an array. The greatest common divisor of an array is the largest integer that evenly divides all the array elements. */

func subarrayGCD(_ nums: [Int], _ k: Int) -> Int {
    var count = 0
    for index in 0...nums.count {
        var gcd = 0
        for jindex in index..<nums.count {
            gcd = euclidGCD(nums[jindex], gcd)
            if gcd == k {
                count += 1
            } else if gcd < k {
                break
            }
        }
    }
    return count
}

func euclidGCD(_ first: Int, _ second: Int) -> Int {
    return second == 0 ? first : euclidGCD(second, first%second)
}

var nums = [9,3,1,2,6,3], k = 3

subarrayGCD(nums, k)

