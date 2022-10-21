import UIKit

/* Given a positive integer n, return the smallest positive integer that is a multiple of both 2 and n. */

func smallestEvenMultiple(_ n: Int) -> Int {
    return (n & 1 == 0) ? n : (2*n)
}

//smallestEvenMultiple(5)
//smallestEvenMultiple(6)

