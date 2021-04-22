/*:
 
 # Insertion  sort
 - - - - - - - - - -
 Goal: Sort an array from low to high (or high to low).
 
 Performance: O(n^2)
*/

import Foundation

func insertionSort(_ array: [Int]) -> [Int] {
    var sortedArray = array
    
    for index in 1..<sortedArray.count {
        var currentIndex = index
        
        while currentIndex > 0 && sortedArray[currentIndex] < sortedArray[currentIndex - 1] {
            sortedArray.swapAt(currentIndex - 1, currentIndex)
            currentIndex -= 1
        }
    }
    
    return sortedArray
}

let myArray = [ 10, 0, 3, 9, 2, 14, 8, 27, 1, 5, 8, -1, 26 ]

var result: [Int] = []
timeTest {
    result = insertionSort(myArray)
}
print(result)
