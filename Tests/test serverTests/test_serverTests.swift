import XCTest
import class Foundation.Bundle
import Thrift



final class test_serverTests: XCTestCase {
    
    func testIfServerGivesName() {
        
        let url              = URL(string: "http://localhost:9090")!
        let session          = URLSession(configuration: .default)
        let transportFactory = THTTPSessionTransport.Factory(session: session, url: url)
        let transport        = transportFactory.newTransport()
        let proto            = TBinaryProtocol(on: transport)
        let client           = TestServiceClient(inoutProtocol: proto)
        let value            = try! client.getName()
        XCTAssertEqual(value , "TTTTTestService")
    }
    
    
    func testIfServerGivesObjects() {
        
        let url              = URL(string: "http://localhost:9090")!
        let session          = URLSession(configuration: .default)
        let transportFactory = THTTPSessionTransport.Factory(session: session, url: url)
        let transport        = transportFactory.newTransport()
        let proto            = TBinaryProtocol(on: transport)
        let client           = TestServiceClient(inoutProtocol: proto)
        let objects          = try! client.getTestAPIObjects(quantity: 2)
        
        let object1 = TestAPIObject(id: "1", optionalIntSixtyFour: 20, nonOptionalIntSixtyFour: 23, optionalIntThirtyTwo: nil, nonOptionalThirtyTwo: 1, optionalBool: false, nonOptionalBool: true, optionalString: nil, nonOptionalString: "nani", nestedType: nil, nestedTypesList: nil)
        
        let object2 = TestAPIObject(id: "2", optionalIntSixtyFour: 10, nonOptionalIntSixtyFour: 24, optionalIntThirtyTwo: nil, nonOptionalThirtyTwo: 1, optionalBool: false, nonOptionalBool: true, optionalString: nil, nonOptionalString: "nani2", nestedType: nil, nestedTypesList: nil)
        
        let copiedObjects = TList(arrayLiteral: object1, object2)
        
        print("objects", objects)
        XCTAssertEqual(objects, copiedObjects)
    }
}
