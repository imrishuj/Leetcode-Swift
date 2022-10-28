import UIKit

/* You are given n rectangles represented by a 0-indexed 2D integer array rectangles, where rectangles[i] = [widthi, heighti] denotes the width and height of the ith rectangle.
 
 Two rectangles i and j (i < j) are considered interchangeable if they have the same width-to-height ratio. More formally, two rectangles are interchangeable if widthi/heighti == widthj/heightj (using decimal division, not integer division).

 Return the number of pairs of interchangeable rectangles in rectangles. */

//func interchangeableRectangles(_ rectangles: [[Int]]) -> Int {
//    var totalCount = 0
//    var map = [Double: Int]()
//
//    for rect in rectangles {
//        map[(Double(rect[0])/Double(rect[1])), default: 0] += 1
//    }
//
//    for count in map.values {
//        if count > 1 {
//            totalCount += count*(count-1) / 2
//        }
//    }
//    return totalCount
//}

func interchangeableRectangles(_ rectangles: [[Int]]) -> Int {
    var totalCount = 0
    var maps = [[[Int]]: Int]()
    
    for rect in rectangles {
        let gcd = euclidGCD(rect[0], rect[1])
        let key = [[rect[0]/gcd, rect[1]/gcd]]
        totalCount += maps[key] ?? 0
        maps[key, default: 0] += 1
    }
    return totalCount
}

func euclidGCD(_ first: Int, _ second: Int) -> Int {
    return second == 0 ? first : euclidGCD(second, first%second)
}

interchangeableRectangles([[4,8],[3,6],[10,20],[15,30]])

