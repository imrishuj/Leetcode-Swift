import UIKit

/* You have a set of integers s, which originally contains all the numbers from 1 to n. Unfortunately, due to some error, one of the numbers in s got duplicated to another number in the set, which results in repetition of one number and loss of another number.
 You are given an integer array nums representing the data status of this set after the error.
 Find the number that occurs twice and the number that is missing and return them in the form of an array.
 */

func findErrorNums(_ nums: [Int]) -> [Int] {
    var countDict = [Int: Int]()
    nums.forEach({ countDict[$0, default: 0] += 1 })
    let repeatedNo = countDict.first(where: { $0.value == 2 })?.key ?? 0
    var count = 1
    while (count <= nums.count) {
        if countDict[count] == nil {
            return [repeatedNo, count]
        }
        count += 1
    }
    return []
}

var nums = [1,2,2,4]
findErrorNums(nums)
