/*:
 
 # Binary Search
 - - - - - - - - - -
 Average performance: O(log n)
*/

import Foundation

func binarySearch<T: Comparable>(_ list: [T], item: T) -> Int? {
    var low = 0
    var high = list.count - 1
    
    while low <= high {
        let mid = (low + high) / 2
        
        let guess = list[mid]
        
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

let myList = [1, 3, 5, 7, 9]

print(binarySearch(myList, item: 5) ?? "Not found")
print(binarySearch(myList, item: 2) ?? "Not found")

