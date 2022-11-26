 import UIKit

/* You are given a string allowed consisting of distinct characters and an array of strings words. A string is consistent if all characters in the string appear in the string allowed.
 Return the number of consistent strings in the array words. */

func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
    var count = 0
    let allowedSet = Set(allowed)
    for word in words {
        let set = Set(word)
        if set.subtracting(allowedSet).count == 0 {
            count += 1
        }
    }
    return count
}

var allowed = "ab"
var words = ["ad","bd","aaab","baa","badab"]
allowed = "abc"
words = ["a","b","c","ab","ac","bc","abc"]
allowed = "cad"
words = ["cc","acd","b","ba","bac","bad","ac","d"]
countConsistentStrings(allowed, words)
