//
//  MZServerTests.swift
//  NewsAPIKitTests
//
//  Created by YB on 2019/7/9.
//  Copyright © 2019 YB. All rights reserved.
//

import XCTest
import NewsAPIKit

class MZServerTests<Response: Codable>: XCTestCase {

    override func setUp() {
        APPInfo.shareInstance = APPInfo(appid: "tqarlcgcsuwqin8w", appSecret: "dUI1MzA1OS83andyM2lrdDZNYnhWUT09")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testServer(_ server: Server<Response>) {
        let expectation = self.expectation(description: "")
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

}
