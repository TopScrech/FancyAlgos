import Testing
@testable import FancyAlgos

struct FancyAlgosTests {
    private let milArray = (0...1_000_000).shuffled()
    
    @Test func testStalinSort() async {
        let sortedByStalin = await milArray.stalinSorted()
        
        print(sortedByStalin)
        
        #expect(sortedByStalin == sortedByStalin.sorted())
    }
    
    @Test func testBogoSort() async {
        let array = (0...9).shuffled()
        let sorted = await array.bogoSorted()
        
        #expect(sorted == array.sorted())
    }
    
    @Test func testSleepSort() async {
        let data: [Int] = [0, 3, 1, 2]
        let sorted = await data.sleepSorted()
        
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
