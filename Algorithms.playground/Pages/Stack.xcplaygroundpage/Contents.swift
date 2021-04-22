/*:
 
 # Stack
 - - - - - - - - - -
*/

import Foundation

struct Stack<Element> {
    private var array: [Element] = []
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    mutating func push(_ element: Element) {
        array.append(element)
    }
    
    mutating func pop() -> Element? {
        return array.popLast()
    }
    
    func peek() -> Element? {
        return array.last
    }
}

var stack = Stack<Int>()
stack.push(0)
stack.push(9)
stack.push(18)
print(stack) // [0, 9, 18]

stack.pop()
print(stack) // [0, 9]

print(stack.peek() ?? "Not found") // 9

