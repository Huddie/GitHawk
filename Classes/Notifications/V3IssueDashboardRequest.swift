//
//  V3IssueDashboardRequest.swift
//  Alamofire-iOS
//
//  Created by Ehud Adler on 11/7/18.
//

import Foundation
import GitHubAPI

public struct V3IssueDashboardRequest: V3Request {
    public typealias ResponseType = V3DataResponse<[V3IssueDashboardNotification]>
    public var pathComponents: [String] {
        return ["issues"]
    }
    public var parameters: [String : Any]? {
        return [
            "all": all.description,
            "participating": "false",
            "page": page,
            "per_page": "50"
        ]
    }
    public let all: Bool
    public let page: Int

    public init(all: Bool = true, page: Int? = nil) {
        self.all = all
        self.page = page ?? 1
    }
}
