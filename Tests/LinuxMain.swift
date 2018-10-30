import XCTest

import test_serverTests

var tests = [XCTestCaseEntry]()
tests += test_serverTests.allTests()
XCTMain(tests)