import UIKit

/* There is a hidden integer array arr that consists of n non-negative integers.
 
 It was encoded into another integer array encoded of length n - 1, such that encoded[i] = arr[i] XOR arr[i + 1]. For example, if arr = [1,0,2,1], then encoded = [1,2,3].

 You are given the encoded array. You are also given an integer first, that is the first element of arr, i.e. arr[0].

 Return the original array arr. It can be proved that the answer exists and is unique. */

func decode(_ encoded: [Int], _ first: Int) -> [Int] {
    var hiddenArray = [first]
    encoded.forEach({ hiddenArray.append($0 ^ (hiddenArray.last ?? 0)) })
    return hiddenArray
}

var encoded = [1,2,3]
var first = 1
encoded = [6,2,7,3]
first = 4
decode(encoded, first)
