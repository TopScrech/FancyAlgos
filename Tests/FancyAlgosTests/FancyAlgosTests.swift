import Testing
@testable import FancyAlgos

struct FancyAlgosTests {
    @Test func testStalinSort() async {
        let array = [1, 4, 2, 3, 5]
        let sortedByStalin = await array.stalinSorted()
        
        print(sortedByStalin)
    }
    
    @Test func testBogoSort() async {
        let data = [3, 1, 2]
        let sorted = await data.bogoSorted(maxAttempts: 10_000)
        
        #expect(sorted == [1, 2, 3])
    }
    
    @Test func testSleepSort() async {
        let data: [UInt] = [0, 3, 1, 2]
        let sorted = await data.sleepSorted(timeFactor: 500) // 0–1.5ms total
        
        #expect(sorted == [0, 1, 2, 3])
    }
    
    @Test func testQuantumBogoSort() async {
        let data = [2, 1, 3]
        let sorted = await data.quantumBogoSorted(maxUniverses: 10_000)
        
        #expect(sorted == [1, 2, 3])
    }
    
    @Test func testPurgeSort() async {
        let data = [1, 5, 3, 4, 2, 6]
        let kept = await data.purgeSorted()
        
        #expect(kept == [1, 5, 6])
    }
    
    @Test func testSlowSort() async {
        let data = [4, 1, 3, 2]
        let sorted = await data.slowSorted()
        
        #expect(sorted == [1, 2, 3, 4])
    }
    
    @Test func testMiracleSortKeepsOrder() async {
        let data = [3, 2, 1]
        let untouched = await data.miracleSorted()
        
        #expect(untouched == data)
    }
}
