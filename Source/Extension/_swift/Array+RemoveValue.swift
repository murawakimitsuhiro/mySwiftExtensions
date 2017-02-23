//
//  Array+RemoveValue.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation

public extension Array {
    /** 
     配列内の指定した値一つの削除
     */
    @discardableResult
    public mutating func removeValue<T : Equatable>(_ obj : T) -> Array {
        self = self.filter({$0 as? T != obj})
        return self
    }
}
