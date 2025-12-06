/// Infamously inefficient recursive sort that "multiplies and surrenders"
func slowSort<Element: Comparable>(_ array: [Element]) -> [Element] {
    func sort(_ data: inout [Element], _ i: Int, _ j: Int) {
        guard i < j else { return }
        
        let m = (i + j) / 2
        sort(&data, i, m)
        sort(&data, m + 1, j)
        
        if data[j] < data[m] {
            data.swapAt(j, m)
        }
        
        sort(&data, i, j - 1)
    }
    
    var result = array
    sort(&result, 0, max(result.count - 1, 0))
    
    return result
}
