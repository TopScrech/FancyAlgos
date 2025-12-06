import Testing
@testable import FancyAlgos

struct ScrechKitTests {
    @Test func testStalinSort() {
        let array = [1, 4, 2, 3, 5]
        let sortedByStalin = stalinSort(array)
        
        print(sortedByStalin)
    }
}
