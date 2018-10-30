//
//  TTTTTestService.swift
//  CHTTPParser
//
//  Created by Alexander Zaporozhchenko on 10/29/18.
//

import TPerfectHTTPServer
import Thrift


let service = TTTTTestService()


let server = try? TPerfectHTTPServer(port: 9090,
                                     service: service,
                                     inProtocol: TBinaryProtocol.self,
                                     outProtocol: TBinaryProtocol.self,
                                     processor: TestServiceProcessor.self)

try? server?.serve()

