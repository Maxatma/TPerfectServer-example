import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(test_serverTests.allTests),
    ]
}
#endif