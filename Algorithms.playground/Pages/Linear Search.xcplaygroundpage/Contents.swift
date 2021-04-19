/*:
 
 # Linear Search
 - - - - - - - - - -
 Goal: Find a particular value in an array.
 
 Performance: O(n)
*/

import Foundation

func linearSearch<T: Comparable>(_ array: [T], item: T) -> Int? {
    for (index, obj) in array.enumerated() where obj == item {
        return index
    }
    
    return nil
}

let myArray = [1, 2, 3, 4, 5]
print(linearSearch(myArray, item: 3) ?? "Not found") // 2
print(linearSearch(myArray, item: 6) ?? "Not found") // Not Found
