//O(log n)


//Only works on sorted Input
//Divide and Counquer. Recusrively selects which half to return and continue search in
//If middle element is greater than key only recursively returns the left half array and continues until (0)1

//Array must be sorted first to work properly

func binarySearch<T: Comparable>(a: [T], key: T, range: Range<Int>) -> Int? {
    if range.startIndex >= range.endIndex {
        // If we get here, then the search key is not present in the array.
        return nil
        
    } else {
        // Calculate where to split the array.
        let midIndex = range.startIndex + (range.endIndex - range.startIndex) / 2
        
        // Is the search key in the left half?
        if a[midIndex] > key {
            return binarySearch(a, key: key, range: range.startIndex ..< midIndex)
            
            // Is the search key in the right half?
        } else if a[midIndex] < key {
            return binarySearch(a, key: key, range: midIndex + 1 ..< range.endIndex)
            
            // If we get here, then we've found the search key!
        } else {
            return midIndex
        }
    }
}

let searchArray = ["ethan","heath", "ethan", "mark","clarice", "claire","ethan"].sort()
print(searchArray)
//Returns the index of the found element
binarySearch(searchArray, key: "mark", range: 0..<searchArray.count)

binarySearch(searchArray, key: "ethan", range: 0..<searchArray.count)
