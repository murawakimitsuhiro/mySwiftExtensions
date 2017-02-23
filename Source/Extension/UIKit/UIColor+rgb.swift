//
//  UIColor+rgb.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

public extension UIColor {
    
    public convenience init(commaComponentsString: String) {
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        
        let list:[String] = commaComponentsString.components(separatedBy: ",")
        if list.count == 3 {
            r = CGFloat(Int(list[0])!)
            g = CGFloat(Int(list[1])!)
            b = CGFloat(Int(list[2])!)
        }
        
        self.init(red: r, green: g, blue: b, alpha: 1.0)
    }
    
}
