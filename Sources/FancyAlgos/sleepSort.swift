import Foundation

extension Array where Element == Int {
    func sleepSorted() -> [Element] {
        var sortedElements = [Element]()
        
        let group = DispatchGroup()
        
        for element in self {
            group.enter()
            
            DispatchQueue.global().async {
                let ms = 1000
                usleep(useconds_t(element * ms))
                print(element)
                sortedElements.append(element)
                group.leave()
            }
        }
        
        group.wait()
        return sortedElements
    }
}
