//
//  JHNewsAPIServer.swift
//  NewsAPIKit
//
//  Created by YB on 2019/7/9.
//  Copyright © 2019 YB. All rights reserved.
//

import Foundation
import Moya

public struct JHNewsAPIServer {
    
    public var newsAPIServer = NewsAPIServer()
    
    public init() { }
    
    public func request(type: JHNewsType) {
        newsAPIServer.request(.jhNews(key: "", type: type)) { (result) in
            
        }
    }
}
