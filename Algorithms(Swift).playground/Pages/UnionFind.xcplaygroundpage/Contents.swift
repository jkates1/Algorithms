import Foundation

//Quick Find Implementation
public struct UF {
    
    private var id = [Int]()
    private var size: Int
    
    init(n: Int) {
        size = n
        id = Array(1...n)
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

let thisUnion = UF(n: 100)




