//
//  Regex+Groups.swift
//  Freetime
//
//  Created by Ehud Adler on 3/11/19.
//  Copyright © 2019 Ryan Nystrom. All rights reserved.
//

import Foundation

extension NSTextCheckingResult {
    func groups(originalString: String) -> [String] {
        var groups = [String]()
        for i in  0 ..< self.numberOfRanges {
            let group = String(originalString[Range(self.range(at: i), in: originalString)!])
            groups.append(group)
        }
        return groups
    }
}
