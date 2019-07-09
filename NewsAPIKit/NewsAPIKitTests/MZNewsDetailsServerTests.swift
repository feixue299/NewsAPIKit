//
//  MZNewsDetailsServerTests.swift
//  NewsAPIKitTests
//
//  Created by YB on 2019/7/9.
//  Copyright © 2019 YB. All rights reserved.
//

import XCTest
import NewsAPIKit

class MZNewsDetailsServerTests: MZServerTests<MZNewsDetailsResponse> {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRequest() {
        testServer(MZNewsDetailsServer(target: .mzNewsDetails(newsid: "EJL8KI9J00258105")))
    }

}
