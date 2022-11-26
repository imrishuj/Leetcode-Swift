import UIKit

/* You are given an integer array arr. Sort the integers in the array in ascending order by the number of 1's in their binary representation and in case of two or more integers have the same number of 1's you have to sort them in ascending order.
 Return the array after sorting it. */

func sortByBits(_ arr: [Int]) -> [Int] {
    return arr.sorted(by: { $0.nonzeroBitCount < $1.nonzeroBitCount || $0.nonzeroBitCount == $1.nonzeroBitCount && $0 < $1 })
}

var arr = [0,1,2,3,4,5,6,7,8]
sortByBits(arr)
