//
//  NSObject+name.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation

public extension NSObject {
    public class var className: String {
        return String(describing: self)
    }
    
    public var className: String {
        return type(of: self).className
    }
}
