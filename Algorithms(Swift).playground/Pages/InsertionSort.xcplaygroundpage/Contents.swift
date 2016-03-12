
import Foundation


func insertionSort(numberList: [Int]) -> [Int] {
    
    var output = numberList
    
    //Use enumerate on array member to get element key
    for (primaryIndex,value) in output.enumerate() {
        
        let currentValue = value
        
        for var secondaryIndex = primaryIndex; secondaryIndex > -1; secondaryIndex-- {
            if currentValue < output[secondaryIndex] {
                output.removeAtIndex(secondaryIndex + 1)
                output.insert(currentValue, atIndex: secondaryIndex)
            }
        }
    }
    return output
}

let unsortedArray = [2,28,1,2398,23,182,32,221]


