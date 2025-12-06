import Foundation

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public extension Array where Element == Int {
    func sleepSorted() async -> [Element] {
        await withTaskGroup(of: Int.self) { group in
            for element in self {
                group.addTask {
                    try? await Task.sleep(nanoseconds: UInt64(element) * 1_000_000)
                    print(element)
                    return element
                }
            }
            
            var sortedElements = [Element]()
            
            for await value in group {
                sortedElements.append(value)
            }
            
            return sortedElements
        }
    }
}
