import XCTest
@testable import IPInfoExample

final class IPInfoExampleTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(IPInfoExample().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
