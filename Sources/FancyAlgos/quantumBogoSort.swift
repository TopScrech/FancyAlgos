/// Same spirit as bogosort but with a tongue‑in‑cheek multiverse twist
func quantumBogoSort<Element: Comparable>(_ array: [Element], maxUniverses: Int = 100_000) -> [Element] {
    guard array.count > 1 else { return array }
    var candidate = array
    
    for _ in 0..<maxUniverses {
        if candidate.isNonDecreasing { return candidate }
        candidate.shuffle()
    }
    
    return candidate
}
