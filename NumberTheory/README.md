# Number Theory

/* 1. Count Primes */

- sieve of eratosthenes
- for more details https://www.geeksforgeeks.org/sieve-of-eratosthenes/

/* 2. Add Digits */

- Recursively call the function if sum is greater than 10
- Add the digit utill it becomes 0

/* 3. X of a Kind in a Deck of Cards */

- Use extra sapcing to count each value
- If final gcd is not 1 of all then partition is possible
 
/* 4. Ugly Number III */
 
- Binary search aproach
 
/* 5. Check If It Is a Good Array */
 
- If final gcd is 1 of all nums then it'll be a good array.
 
/* 6. Simplified Fractions */

- If gcd of num(start from 1 to n) & denom(start from num+1 to n) is equal to 1 then store it in array
- return that array
 
/* 7. Number of Different Subsequences GCDs */

- https://leetcode.com/problems/number-of-different-subsequences-gcds/discuss/1141309/Simple-explanation-or-O(n-*-sqrt-n)
 
/* 8. Find Greatest Common Divisor of Array */
 
- find min & max in array
- find gcd of both
 
/* 9. Number of Pairs of Interchangeable Rectangles */
 
- Use extra spacing to store i/gcd(i,j), j/gcd(i,j) with count
- Return total count
 
/* 10. Count Array Pairs Divisible by K */

- If (a*b)%k==0, then gcd(a,k) * gcd(b,k) % k is also 0.
- As compared to checking for every pair, if we check for gcd of every number with k then the operations will be less because the number of prime factors of a number will be less.

/* 11. Replace Non-Coprime Numbers in Array */

- Use stack approach
- Append one by one item & check condition
- If they are non-coprime then remove 2 element from array & append the lcm

/* 12. Minimum Lines to Represent a Line Chart */

- Slope of line & check d/f
- If not equal count them

/* 13. Minimum Deletions to Make Array Divisible */

- find gcd of all numsDivide
- sort nums array
- if gcd % sortedArray[index] is 0 return first index else increase its count

/* 14. Smallest Even Multiple */

- n&1

/* 15. Number of Common Factors */

- Find gcd of both number
- Brute force

/* 16. Number of Subarrays With GCD Equal to K */

- Start first loop from 0 to n & another loop from firsrt index to n
- find gcd & match with k
- to overcome code run time i've added gcd < k 
