import Foundation

let myArray = [2, 4, 6]
let myArray2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var emptyArray = Array<Int>()
let oneItemArray = [9]

func sum(array: [Int]) -> Int {
    if array == [] {
        return 0
    }
    
    var mutableArray = array
    let first = mutableArray.removeFirst()
    return first + sum(array: mutableArray)
}

print("sum")
print(sum(array: myArray)) // 12
print(sum(array: myArray2)) // 55
print(sum(array: emptyArray)) // 0
print(sum(array: oneItemArray)) // 9


print("\(String(repeating: "------------------------------------------", count: 3))")


func countElements<Element: Equatable>(of array: [Element]) -> Int {
    if array == [] {
        return 0
    }
    
    var mutableArray = array
    mutableArray.removeFirst()
    return 1 + countElements(of: mutableArray)
}

print("countElements")
print(countElements(of: myArray)) // 3
print(countElements(of: myArray2)) // 10
print(countElements(of: emptyArray)) // 0
print(countElements(of: oneItemArray)) // 1


print("\(String(repeating: "------------------------------------------", count: 3))")


func highestValue<Element: Numeric & Comparable>(of array: [Element]) -> Element {
    if array == [] {
        return 0
    }
    
    var mutableArray = array
    let first = mutableArray.removeFirst()
    
    return max(first, highestValue(of: mutableArray))
}

print("highestValue")
print(highestValue(of: myArray.shuffled())) // 6
print(highestValue(of: myArray2.shuffled())) // 10
print(highestValue(of: emptyArray)) // 0
print(highestValue(of: oneItemArray)) // 9



print("\(String(repeating: "------------------------------------------", count: 3))")



func recursiveBinarySearch(array: [Int], item: Int, low: Int, high: Int) -> Int {
    if array == [] {
        return -1
    }
    
    let mid = (low + high) / 2
    
    let guess = array[mid]
    
    if guess == item {
        return mid
    }
    
    return guess > item ? recursiveBinarySearch(array: array, item: item, low: low, high: mid - 1)
                 : recursiveBinarySearch(array: array, item: item, low: mid + 1, high: high)
}

print("recursiveBinarySearch")
print(recursiveBinarySearch(array: myArray, item: 4, low: 0, high: myArray.count)) // 1
print(recursiveBinarySearch(array: myArray2, item: 6, low: 0, high: myArray2.count)) // 5
print(recursiveBinarySearch(array: emptyArray, item: 3, low: 0, high: emptyArray.count)) // -1
print(recursiveBinarySearch(array: oneItemArray, item: 9, low: 0, high: oneItemArray.count)) // 0



print("\(String(repeating: "------------------------------------------", count: 3))")



