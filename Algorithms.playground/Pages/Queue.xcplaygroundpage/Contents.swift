/*:
 
 # Queue
 - - - - - - - - - -
 */

import Foundation

public struct Queue<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    public var front: T? {
        return array.first
    }
}

var queue = Queue<Int>()
queue.enqueue(0)
queue.enqueue(9)
queue.enqueue(18)
print(queue) // [0, 9, 18]

queue.dequeue()
print(queue) // [9, 18]

print(queue.front ?? "Not found") // 9
