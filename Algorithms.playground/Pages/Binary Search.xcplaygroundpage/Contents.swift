/*:
 
 # Binary Search
 - - - - - - - - - -
 Goal: Quickly find an element in an array.
 
 Performance: O(log n)
*/

import Foundation

func binarySearch<T: Comparable>(_ array: [T], item: T) -> Int? {
    var low = 0
    var high = array.count - 1
    
    while low <= high {
        let mid = (low + high) / 2
        
        let guess = array[mid]
        
        if guess == item {
            return mid
        }
        
        if guess > item {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    
    return nil
}

let myArray = [1, 3, 5, 7, 9]

print(binarySearch(myArray, item: 5) ?? "Not found") // 2
print(binarySearch(myArray, item: 2) ?? "Not found") // Not found

