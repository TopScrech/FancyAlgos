/// Walks left→right keeping only values that preserve ascending order
func purgeSort<Element: Comparable>(_ array: [Element]) -> [Element] {
    guard var last = array.first else { return [] }
    var kept: [Element] = [last]
    
    for value in array.dropFirst() where value >= last {
        kept.append(value)
        last = value
    }
    
    return kept
}
