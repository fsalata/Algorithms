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



