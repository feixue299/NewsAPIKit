//
//  MZNewsListServerTests.swift
//  NewsAPIKitTests
//
//  Created by YB on 2019/7/9.
//  Copyright © 2019 YB. All rights reserved.
//

import XCTest
import NewsAPIKit

class MZNewsListServerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRequest() {
        let expectation = self.expectation(description: "")
        let server = MZNewsListServer(target: .mzNewsList(typeid: 509, page: 1))
        server.request({ (result) in
            switch result {
            case .success(let response):
                print("success:\(response)")
                expectation.fulfill()
            case .failure(let error):
                print("error:\(error.localizedDescription)")
            }
        }, failure: { (moyaError) in
            print("failure:\(moyaError.localizedDescription)")
        })
        waitForExpectations(timeout: 5, handler: nil)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
