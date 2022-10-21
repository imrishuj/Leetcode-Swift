import UIKit

/* You are given an integer array deck where deck[i] represents the number written on the ith card. Partition the cards into one or more groups such that:
 Each group has exactly x cards where x > 1, and
 All the cards in one group have the same integer written on them.
 Return true if such partition is possible, or false otherwise. */

func hasGroupsSizeX(_ deck: [Int]) -> Bool {
    var counts: [Int: Int] = [:]
    for item in deck {
        counts[item] = (counts[item] ?? 0) + 1
    }
    let values = Array(counts.values)
    var result = values[0]
    var firstIndex = 1
    while (firstIndex < values.count) {
        result = euclidGCD(values[firstIndex], result)
        firstIndex += 1
    }
    return (result == 1) ? false : true
}

func euclidGCD(_ first: Int, _ second: Int) -> Int {
    return second == 0 ? first : euclidGCD(second, first%second)
}

