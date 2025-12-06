import Dispatch

/// Sleep-sort spawns a task per number and orders results by wake time.
/// Only makes sense for non-negative integers; `timeFactor` keeps delays tiny
public func sleepSort(_ array: [UInt], timeFactor: useconds_t = 1_000) -> [UInt] {
    guard !array.isEmpty else { return [] }
    
    let group = DispatchGroup()
    let lock = DispatchSemaphore(value: 1)
    var output: [UInt] = []
    
    for (idx, value) in array.enumerated() {
        group.enter()
        
        DispatchQueue.global().async {
            // Offset by index so equal values still arrive deterministically.
            usleep(UInt32(value) * timeFactor + useconds_t(idx))
            lock.wait()
            output.append(value)
            lock.signal()
            group.leave()
        }
    }
    
    group.wait()
    return output
}
