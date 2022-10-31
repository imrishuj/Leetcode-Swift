import UIKit

/* Given an integer num, repeatedly add all its digits until the result has only one digit, and return it. */

func addDigits(_ num: Int) -> Int {
    var sumOfDigits = 0
    var newNum = num
    while (newNum != 0 ) {
        sumOfDigits = sumOfDigits + newNum % 10
        newNum = newNum / 10
    }
    return sumOfDigits < 10 ? sumOfDigits : addDigits(sumOfDigits)
}

addDigits(2138)
