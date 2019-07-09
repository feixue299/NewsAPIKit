//
//  MZNewsTypeServerTests.swift
//  NewsAPIKitTests
//
//  Created by YB on 2019/7/9.
//  Copyright © 2019 YB. All rights reserved.
//

import XCTest
import NewsAPIKit

class MZNewsTypeServerTests: MZServerTests<MZNewsTypesResponse> {

    override func setUp() {
        
    }

    override func tearDown() {
        
    }
    
    func testRequest() {
        testServer(MZNewsTypesServer(target: .mzNewsTypes))
    }

}
