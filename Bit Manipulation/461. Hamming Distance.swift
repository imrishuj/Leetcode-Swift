import UIKit

/* The Hamming distance between two integers is the number of positions at which the corresponding bits are different.
 
 Given two integers x and y, return the Hamming distance between them.*/

func hammingDistance(_ x: Int, _ y: Int) -> Int {
    var count = 0
    var xor = x ^ y
    while(xor != 0) {
        xor &= xor-1
        count += 1
    }
    return count
}

var x = 1, y = 4
x = 3
y = 1
hammingDistance(x,y)
