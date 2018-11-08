//
//  InboxType.swift
//  Freetime
//
//  Created by Ryan Nystrom on 6/16/18.
//  Copyright © 2018 Ryan Nystrom. All rights reserved.
//

import Foundation

enum InboxType {
    case unread
    case repo(Repository)
    case all
    case issueDashboard

    var showAll: Bool {
        switch self {
        case .all, .repo: return true
        case .unread, .issueDashboard: return false
        }
    }

    var isDashboard: Bool {
        switch self {
        case .issueDashboard: return true
        case .all, .repo, .unread: return false
        }
    }
}
