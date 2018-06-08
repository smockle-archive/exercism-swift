//Solution goes in Sources
class SumOfMultiples {
    static func getMultiples(of multiple: Int, until limit: Int) -> Set<Int> {
        guard multiple != 0 else {
            return Set([0])
        }
        return Set((0..<limit).filter { value in value % multiple == 0 })
    }
    static func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
        guard inMultiples.count != 0 else {
            return 0
        }
        return inMultiples.reduce(Set<Int>(), { set, multiple in
            set.union(SumOfMultiples.getMultiples(of: multiple, until: limit))
        }).reduce(0, +)
    }
}
