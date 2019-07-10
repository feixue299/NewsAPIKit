//
//  MZNewsListServerTests.swift
//  NewsAPIKitTests
//
//  Created by YB on 2019/7/9.
//  Copyright © 2019 YB. All rights reserved.
//

import XCTest
import NewsAPIKit

class MZNewsListServerTests: MZServerTests<MZNewsListResponse> {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRequest() {
        testServer(MZNewsListServer(target: .mzNewsList(typeid: 517, page: 1)))
    }

}
