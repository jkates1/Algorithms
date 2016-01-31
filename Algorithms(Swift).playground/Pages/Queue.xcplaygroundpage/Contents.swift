//: Queue
// Generic Queue Wrapper Example
public struct Queue<T> {
    
    private var array = [T]()
    
    public var count: Int {
        return array.count
    }
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public mutating func enqueue(element: T) {
        array.insert(element, atIndex: 0)
    }
    
    public mutating func dequeue() -> T? {
        guard !isEmpty else {
        return nil
        }
        return array.removeFirst()
    }
    
    public func peek() -> T? {
        guard !isEmpty else {
            return nil
        }
        return array.first
    }
}

var queue = Queue(array: [1,2,3,4,5])

queue.count
queue.peek()
queue.dequeue()
queue.peek()
queue.enqueue(1)
print(queue)
