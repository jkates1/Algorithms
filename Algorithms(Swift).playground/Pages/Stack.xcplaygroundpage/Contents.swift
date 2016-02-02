//: Stack Wrapper (LIFO)

public struct Stack<T> {
    
    private var array = [T]()
    
    public var count: Int {
        return array.count
    }
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public mutating func push(element: T) {
        array.append(element)
    }
    
    public mutating func pop() -> T? {
        guard !isEmpty else {
            return nil
        }
        return array.removeLast()
    }
    
    public func peek() -> T? {
        return array.last
    }
    

    
}

var stack = Stack(array: ["String1", "String2"])

stack.push("Jerry")
stack.pop()
stack.count
stack.peek()

struct StackGenerator<T>: GeneratorType {
    var stack: Stack<T>
    
    mutating func next() -> T? {
        return stack.pop()
    }
}

var myStackGenerator = StackGenerator(stack: stack)

while let value = myStackGenerator.next() {
    print("Got \(value)")
}
