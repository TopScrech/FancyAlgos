extension Array where Element: Comparable {
    var isNonDecreasing: Bool {
        guard count > 1 else { return true }
        
        for idx in 1..<count where self[idx] < self[idx - 1] {
            return false
        }
        
        return true
    }
}
