import UIKit

/* Given a 0-indexed integer array nums of length n and an integer k, return the number of pairs (i, j) such that:
 0 <= i < j <= n - 1 and
 nums[i] * nums[j] is divisible by k. */

func countPairs(_ nums: [Int], _ k: Int) -> Int {
    var mapDict = [Int: Int]()
    var count = 0
    var firstIndex = 0
    while (firstIndex < nums.count) {
        let gcd = euclidGCD(nums[firstIndex], k)
        for key in mapDict {
            if gcd * key.key % k == 0 {
                count += key.value
            }
        }
        mapDict[gcd, default: 0] += 1
        firstIndex += 1
    }
    return count
}

func euclidGCD(_ first: Int, _ second: Int) -> Int {
    return second == 0 ? first : euclidGCD(second, first%second)
}

var nums = [1,2,3,4]
var k = 5
nums = [1,2,3,4,5]
k = 2

countPairs(nums, k)



