/*:
 
 # Quicksort
 - - - - - - - - - -
 Goal: Sort an array from low to high (or high to low).
 
 Performance: Good pivot = O(n log n) | Bad pivot = O(n^2)
*/

import Foundation

func quickSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }
    
    let pivot = array[array.count / 2]
    
    let smaller = array.filter { $0 < pivot }
    let equal = array.filter { $0 == pivot }
    let bigger = array.filter { $0 > pivot }
    
    return quickSort(smaller) + equal + quickSort(bigger)
}


let myArray = [ 10, 0, 3, 9, 2, 14, 8, 27, 1, 5, 8, -1, 26 ]

var result: [Int] = []
timeTest {
    result = quickSort(myArray)
}
print(result)

// 4.653319001197815 seconds
// 4.282232999801636 seconds
