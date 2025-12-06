/// Randomly shuffles the array until it happens to be sorted.
/// An upper bound on attempts is used so tests never hang forever
func bogoSort<Element: Comparable>(_ array: [Element], maxAttempts: Int = 50_000) -> [Element] {
    guard array.count > 1 else { return array }
    var candidate = array
    
    for _ in 0..<maxAttempts {
        if candidate.isNonDecreasing {
            return candidate
        }
        
        candidate.shuffle()
    }
    
    return candidate
}
