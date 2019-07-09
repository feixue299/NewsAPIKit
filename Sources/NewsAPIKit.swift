//
//  NewsAPIKit.swift
//  NewsAPIKit
//
//  Created by YB on 2019/7/9.
//  Copyright © 2019 YB. All rights reserved.
//

import Moya

public enum JHNewsType: String {
    case top
    case shehui
    case guonei
    case guoji
    case yule
    case tiyu
    case junshi
    case keji
    case caijing
    case shishang
}

public enum NewsAPIKit {
    case jhNews(key: String, type: JHNewsType)
}

extension NewsAPIKit: TargetType {
    public var baseURL: URL {
        switch self {
        case .jhNews(let key, let type):
            return URL(string: "http://v.juhe.cn/toutiao/index?type=\(type.rawValue)&key=\(key)")!
        }
    }
    
    public var path: String {
        return ""
    }
    
    public var method: Moya.Method {
        return .get
    }
    
    public var sampleData: Data {
        return Data()
    }
    
    public var task: Task {
        return .requestPlain
    }
    
    public var headers: [String : String]? {
        return nil
    }
    
}
