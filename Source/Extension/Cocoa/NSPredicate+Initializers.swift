//
//  NSPredicate+Initializers.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation

public extension NSPredicate {
    ///property が 指定期間内にあるかどうか
    public convenience init(_ property: String, fromDate: NSDate?, toDate: NSDate?) {
        var format = "", args = [AnyObject]()
        if let from = fromDate {
            format += "\(property) >= %@"
            args.append(from)
        }
        if let to = toDate {
            if !format.isEmpty {
                format += " AND "
            }
            format += "\(property) <= %@"
            args.append(to)
        }
        if !args.isEmpty {
            self.init(format: format, argumentArray: args)
        } else {
            self.init(value: true)
        }
    }
}
