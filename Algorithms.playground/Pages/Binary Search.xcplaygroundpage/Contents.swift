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

let myArray = Array(1...1000)

print("\n===== Quicksort =====")
print(binarySearch(myArray, item: 5) ?? "Not found") // 2
print(binarySearch(myArray, item: 2) ?? "Not found") // Not found

var result = 0
timeTest {
    result = binarySearch(myArray, item: 698) ?? -1
}
print(result)

func recursiveBinarySearch(_ array: [Int], item: Int, low: Int, high: Int) -> Int? {
    guard low <= high else { return nil }
    
    let mid = (low + high) / 2
    
    let guess = array[mid]
    
    if guess == item {
        return mid
    }
    
    if guess > item {
        return recursiveBinarySearch(array, item: item, low: low, high: mid - 1)
    } else {
        return recursiveBinarySearch(array, item: item, low: mid + 1, high: high)
    }
}

print("\n===== Recursive Quicksort =====")
print(recursiveBinarySearch(myArray, item: 5, low: 0, high: myArray.count - 1) ?? "Not found") // 2
print(recursiveBinarySearch(myArray, item: 2, low: 0, high: myArray.count - 1) ?? "Not found") // Not found

var result2 = 0
timeTest {
    result2 = binarySearch(myArray, item: 698) ?? -1
}
print(result2)

