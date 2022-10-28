import UIKit

/* You are given an array of integers nums. Perform the following steps:
 Find any two adjacent numbers in nums that are non-coprime.
 If no such numbers are found, stop the process.
 Otherwise, delete the two numbers and replace them with their LCM (Least Common Multiple).
 Repeat this process as long as you keep finding two adjacent non-coprime numbers.
 Return the final modified array. It can be shown that replacing adjacent non-coprime numbers in any arbitrary order will lead to the same result.
 The test cases are generated such that the values in the final array are less than or equal to 108.
 Two values x and y are non-coprime if GCD(x, y) > 1 where GCD(x, y) is the Greatest Common Divisor of x and y. */

func replaceNonCoprimes(_ nums: [Int]) -> [Int] {
    var finalArray = [Int]()
    var firstIndex = 0
    while (firstIndex < nums.count) {
        finalArray.append(nums[firstIndex])
        while (finalArray.count > 1 && (euclidGCD(finalArray[finalArray.count-2], finalArray.last ?? 0) > 1)) {
            let lastEle = finalArray.last ?? 0
            let secondLastEle = finalArray[finalArray.count-2]
            let gcd = euclidGCD(lastEle, secondLastEle)
            finalArray.removeLast()
            finalArray.removeLast()
            let lcm = lastEle*secondLastEle/gcd
            finalArray.append(lcm)
        }
        firstIndex += 1
    }
    return finalArray
}

func euclidGCD(_ first: Int, _ second: Int) -> Int {
    return second == 0 ? first : euclidGCD(second, first%second)
}

var nums = [2,2,1,1,3,3,3]
nums = [6,4,3,2,7,6,2]
nums = [517,11,121,517,3,51,3,1887,5]
nums = [287,41,49,287,899,23,23,20677,5,825]
nums = [11,9,3,9,3,9,3,9,3,3,3,3,3,33,33,3,3,3,9,3,3,9,3,33,3,33,9,33,33,33,9,3,3,9,3,3,9,3,3,33,33,9,3,33,9,3,33,3,3,33,9,3,9,33,3,3,9,9,33,3,3,3485,85,3485,17,85,5,205,5,1025,85,85,205,205,25,5,425,85,5,425,5,1025,5,205,5,425,17,289]
replaceNonCoprimes(nums)


