//
//  Data+StringFormat.swift
//  sampling
//
//  Created by Murawaki on 2017/01/10.
//  Copyright © 2017年 VAZ INC. All rights reserved.
//

import Foundation

public enum DateStirngformatType: String {
    case yMdHmsZ = "yyyy/MM/dd HH:mm:ss Z"
    case yMd = "yyyy/MM/dd"
    case MHJap = "MM月dd日"
    case yMHJap = "yyyy年MM月dd日"
    case yMdjs = "yyyy-MM-dd"
    //ここに追加していく
}

public extension Date {
    public func stringFormat(format: DateStirngformatType) -> String {
        let formatter: DateFormatter = DateFormatter()
        formatter.locale = Locale(identifier: "ja_JP") //NSLocale.currentLocale()
        formatter.timeZone = TimeZone.current //(name: "UTC")
        formatter.dateFormat = format.rawValue
        return formatter.string(from: self)
    }
}
