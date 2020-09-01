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
    
    func testRequest() {
        testServer(MZNewsTypesServer(target: .mzNewsTypes))
    }

}
