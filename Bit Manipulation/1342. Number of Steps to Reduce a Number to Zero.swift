import UIKit

/* Given an integer num, return the number of steps to reduce it to zero.
 
 In one step, if the current number is even, you have to divide it by 2, otherwise, you have to subtract 1 from it. */

func numberOfSteps(_ num: Int) -> Int {
    var stepsCount = 0
    var tempNum = num
    while (tempNum != 0) {
        tempNum = (tempNum&1 == 0) ? (tempNum/2) : (tempNum-1)
        stepsCount += 1
    }
    return stepsCount
}

var num = 14
num = 8
numberOfSteps(num)
