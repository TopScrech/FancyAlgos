import Testing
@testable import FancyAlgos

struct BizarreSortsTests {
    @Test func testBogoSort() {
        let data = [3, 1, 2]
        let sorted = bogoSort(data, maxAttempts: 10_000)
        #expect(sorted == [1, 2, 3])
    }

    @Test func testSleepSort() {
        let data: [UInt] = [0, 3, 1, 2]
        let sorted = sleepSort(data, timeFactor: 500) // 0–1.5ms total
        #expect(sorted == [0, 1, 2, 3])
    }

    @Test func testQuantumBogoSort() {
        let data = [2, 1, 3]
        let sorted = quantumBogoSort(data, maxUniverses: 10_000)
        #expect(sorted == [1, 2, 3])
    }

    @Test func testPurgeSort() {
        let data = [1, 5, 3, 4, 2, 6]
        let kept = purgeSort(data)
        #expect(kept == [1, 5, 6])
    }

    @Test func testSlowSort() {
        let data = [4, 1, 3, 2]
        let sorted = slowSort(data)
        #expect(sorted == [1, 2, 3, 4])
    }

    @Test func testMiracleSortKeepsOrder() {
        let data = [3, 2, 1]
        let untouched = miracleSort(data)
        #expect(untouched == data)
    }
}
