import UIKit

/* Given an integer n, return the number of prime numbers that are strictly less than n. */

func countPrimes(_ n: Int) -> Int {
    if n == 0 || n == 1  { return 0 }
    var visitedArray = Array(repeating: true, count: n)
    if n > 1 {
        visitedArray[0] = false
        visitedArray[1] = false
    }
    
    var start = 2
    while (start*start < n) {
        var multipleOfStart = 2*start
        while(multipleOfStart < n) {
            visitedArray[multipleOfStart] = false
            multipleOfStart += start
        }
        start += 1
    }
    print(visitedArray)
    return visitedArray.filter ({$0 == true}).count
}

countPrimes(10)


