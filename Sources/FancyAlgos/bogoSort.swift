/// Randomly shuffles the array until it happens to be sorted.
/// An upper bound on attempts is used so tests never hang forever
func bogoSort<Element: Comparable>(_ array: [Element], maxAttempts: Int? = nil) -> [Element] {
    guard array.count > 1 else { return array }
    
    let sorted = array.sorted()
    var candidate = array
    var attempts = 0
    
    while candidate != sorted {
        if let maxAttempts, attempts >= maxAttempts { break }
        
        candidate.shuffle()
        attempts += 1
    }
    
    return candidate
}
