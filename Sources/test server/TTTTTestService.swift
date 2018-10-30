//
//  TTTTTestService.swift
//  CHTTPParser
//
//  Created by Alexander Zaporozhchenko on 10/29/18.
//

import Thrift


class TTTTTestService: TestService {

    
    func getName() throws -> String {
        let name = "TTTTTestService"
        return name 
    }
    func getTestAPIObjects(quantity: Int64) throws -> TList<TestAPIObject> {
        
        let object1 = TestAPIObject(id: "1", optionalIntSixtyFour: 20, nonOptionalIntSixtyFour: 23, optionalIntThirtyTwo: nil, nonOptionalThirtyTwo: 1, optionalBool: false, nonOptionalBool: true, optionalString: nil, nonOptionalString: "nani", nestedType: nil, nestedTypesList: nil)
        
        let object2 = TestAPIObject(id: "2", optionalIntSixtyFour: 10, nonOptionalIntSixtyFour: 24, optionalIntThirtyTwo: nil, nonOptionalThirtyTwo: 1, optionalBool: false, nonOptionalBool: true, optionalString: nil, nonOptionalString: "nani2", nestedType: nil, nestedTypesList: nil)
        
        return TList(arrayLiteral: object1, object2 )
    }
}

