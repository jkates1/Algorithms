

import Foundation

// O(n^2)

func selectionSort(array: [Int]) -> [Int] {
    
    guard array.count > 1 else {
        return array
    }
    
    var mutableArray = array
    
    for element in 0..<mutableArray.count - 1 {
        
        var lowest = element
        
        for thisElement in element + 1 ..< mutableArray.count {
            if mutableArray[thisElement] < mutableArray[lowest] {
                lowest = thisElement
            }
        }
        
        if element != lowest {
            swap(&mutableArray[element], &mutableArray[lowest])
        }
        
    }
    return mutableArray
}

let intArray = [22,5,293,1,2332,532,92938,2993,55,12,3]

selectionSort(intArray)

