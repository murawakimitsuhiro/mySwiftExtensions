//
//  Array+Replacement.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation

extension Array {
    /** 入れ替え */
     mutating func replacement(index1 a:Int, index2 b:Int) {
        if self.count < a && self.count < b {
            print("Array range over.")
            return
        }
        let temporary = self[a]
        self[a] = self[b]
        self[b] = temporary
    }
}
