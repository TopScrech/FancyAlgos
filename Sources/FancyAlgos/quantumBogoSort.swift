/// Same spirit as bogosort but with a tongue-in-cheek multiverse twist
func quantumBogoSort<Element: Comparable>(_ array: [Element], maxUniverses: Int? = nil) -> [Element] {
    guard array.count > 1 else { return array }
    
    let sorted = array.sorted()
    var candidate = array
    var universesTried = 0
    
    while candidate != sorted {
        if let maxUniverses, universesTried >= maxUniverses { break }
        
        candidate.shuffle()
        universesTried += 1
    }
    
    return candidate
}
