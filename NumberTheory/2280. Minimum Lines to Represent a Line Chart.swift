import UIKit

/* You are given a 2D integer array stockPrices where stockPrices[i] = [dayi, pricei] indicates the price of the stock on day dayi is pricei. A line chart is created from the array by plotting the points on an XY plane with the X-axis representing the day and the Y-axis representing the price and connecting adjacent points. */

func minimumLines(_ stockPrices: [[Int]]) -> Int {
    guard stockPrices.count > 1 else { return 1 }
    var count = 1
    var startIndex = 2
    let sortedStock  = stockPrices.sorted(by: {($0[0]) < ($1[0])})
    while (startIndex < sortedStock.count) {
        let x1 = sortedStock[startIndex][0], x2 = sortedStock[startIndex-1][0], x3 = sortedStock[startIndex-2][0]
        let y1 = sortedStock[startIndex][1], y2 = sortedStock[startIndex-1][1], y3 = sortedStock[startIndex-2][1]
        let diff1 = (y3-y2) * (x2-x1), diff2 = (y2-y1) * (x3-x2)
        print(diff1, diff2)
        if diff1 != diff2 {
            count += 1
        }
        startIndex += 1
    }
    return count
}

minimumLines([[1,7],[2,6],[3,5],[4,4],[5,4],[6,3],[7,2],[8,1]])

