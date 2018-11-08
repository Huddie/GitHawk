//
//  V3IssueDashboardResponse.swift
//  Freetime
//
//  Created by Ehud Adler on 11/7/18.
//  Copyright © 2018 Ryan Nystrom. All rights reserved.
//

import Foundation
import GitHubAPI

public struct V3IssueDashboardNotification: Codable {

    public let id: Int
    public let repository: V3Repository
    public let body: String
    public let title: String
    public let number: Int
    public let state: String
    public let updatedAt: Date

    enum CodingKeys: String, CodingKey {
        case id
        case repository
        case number
        case body
        case title
        case state
        case updatedAt = "updated_at"
    }
}
