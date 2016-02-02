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

struct RawStack<T> {
    
    var currentPosition: Int = 0
    private var rawStack = [T]()
    
    mutating func push(element: T) {
       rawStack.insert(element, atIndex: currentPosition++)
    }
    
    mutating func pop() -> T? {
        
        var returnElement: T?
        
        guard currentPosition > 0 else {
            return nil
        }
        returnElement = rawStack[currentPosition - 1]
        rawStack.removeAtIndex(currentPosition - 1)
        currentPosition--
        return returnElement
    }
}

var testStack = RawStack<String>()

testStack.push("Jess2")
print(testStack.currentPosition)
testStack.pop()

