//: [Previous](@previous)

import Foundation

func bubbleSort(numberList: [Int]) -> [Int] {
    
    //Mutable copy
    var output = numberList
    
    for (primaryIndex, elementValue) in numberList.enumerate() {
        
        let passes = (output.count - 1) - primaryIndex
        
        for secondaryIndex in 0..<passes {
            
            let currentValue = output[secondaryIndex]
            
            if (currentValue > output[secondaryIndex + 1]) {
                //inout swap
                swap(&output[secondaryIndex], &output[secondaryIndex + 1])
            }
        }
        
    }
    
    return output
}

let intArray = [2,32,22,1,222,3,25,2938,29,2212,55]

bubbleSort(intArray)