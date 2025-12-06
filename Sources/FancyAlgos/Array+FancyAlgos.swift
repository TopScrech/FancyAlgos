import Foundation

public extension Array where Element: Comparable {
    func bogoSorted(maxAttempts: Int = 50_000) async -> [Element] {
        bogoSort(self, maxAttempts: maxAttempts)
    }
    
    func quantumBogoSorted(maxUniverses: Int = 100_000) async -> [Element] {
        quantumBogoSort(self, maxUniverses: maxUniverses)
    }
    
    func purgeSorted() async -> [Element] {
        purgeSort(self)
    }
    
    func slowSorted() async -> [Element] {
        slowSort(self)
    }
    
    func stalinSorted() async -> [Element] {
        stalinSort(self)
    }
}

public extension Array {
    func miracleSorted() async -> [Element] {
        miracleSort(self)
    }
}
