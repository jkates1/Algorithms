
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

insertionSort(unsortedArray)


//Updated for 2.2

func insertionSortTwo<T: Comparable>(array: [T]) -> [T] {
    
    var array2Sort = array
    
    for i in 1..<array2Sort.count {
    
        var j = i
            
            let tempValue = array2Sort[j]
                while j > 0 && tempValue < array2Sort[j - 1]
             {
                array2Sort[j] = array2Sort[j-1]
                j -= 1
            }
            array2Sort[j] = tempValue
        }
    
    return array2Sort
}

insertionSortTwo([1,5,2,3,2,8,6,4])
insertionSortTwo(["hello","goodbye","a","c","b","z"])
