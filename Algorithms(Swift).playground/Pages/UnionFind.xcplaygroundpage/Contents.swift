import Foundation

//Quick Find Implementation
public struct UF {
    
    private var id = [Int]()
    private var size: Int
    
    init(n: Int) {
        size = n
      //  id = Array(1...n).shuffle()
        
        
     }
    
    func count() -> Int {
        return size
    }
    
    func connected(p: Int, q: Int) -> Bool {
    
        return find(p) == find(q)
    }
    
    func find(p: Int) -> Int {
        return id[p]
    }
    
    public mutating func union(p: Int, q: Int) {
        let pID = find(p)
        let qID = find(q)
        
        if (pID == qID) { return }
        
        for (index, _) in id.enumerate() {
            if index == pID {
                id[index] = qID
            }
        }
    }
}

var thisUnion = UF(n: 100)

for var i = 0; i < thisUnion.id.count - 2 ; i++ {
    
    var p = thisUnion.id[i++]
    var q = thisUnion.id[i]
        if thisUnion.connected(p, q: q) {
            thisUnion.union(p, q: q)
            print("\(p) \(q)")
        }

}

extension CollectionType {
    /// Return a copy of `self` with its elements shuffled
    func shuffle() -> [Generator.Element] {
        var list = Array(self)
        list.shuffleInPlace()
        return list
    }
}

extension MutableCollectionType where Index == Int {
    /// Shuffle the elements of `self` in-place.
    mutating func shuffleInPlace() {
        // empty and single-element collections don't shuffle
        if count < 2 { return }
        
        for i in 0..<count - 1 {
            let j = Int(arc4random_uniform(UInt32(count - i))) + i
            guard i != j else { continue }
            swap(&self[i], &self[j])
        }
    }
}
