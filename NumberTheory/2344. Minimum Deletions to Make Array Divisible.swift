import UIKit

/* You are given two positive integer arrays nums and numsDivide. You can delete any number of elements from nums. Return the minimum number of deletions such that the smallest element in nums divides all the elements of numsDivide. If this is not possible, return -1. Note that an integer x divides y if y % x == 0. */

func minOperations(_ nums: [Int], _ numsDivide: [Int]) -> Int {
    var gcd = numsDivide[0]
    var firstIndex = 0
    while (firstIndex < numsDivide.count) {
        gcd = euclidGCD(gcd, numsDivide[firstIndex])
        firstIndex += 1
    }
    let sortedArray = nums.sorted()
    firstIndex = 0
    while (firstIndex < sortedArray.count) {
        if  gcd % sortedArray[firstIndex] == 0 {
            return firstIndex
        }
        firstIndex += 1
    }
    return -1
}

func euclidGCD(_ first: Int, _ second: Int) -> Int {
    return second == 0 ? first : euclidGCD(second, first%second)
}

//var nums = [4,3,6], numsDivide = [8,2,6,10]
var nums = [2,3,2,4,3], numsDivide = [9,6,9,3,15]
minOperations(nums, numsDivide)

