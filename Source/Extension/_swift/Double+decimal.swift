//
//  Double+roundDecimal.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation

public extension Double {
    /**
     小数点第 decimalPlace 位で四捨五入する。
    */
    public mutating func roundDecimal(decimalPlace: Int) {
        var decimal:Double = 10
        for _ in 0..<(decimalPlace) {
            decimal *= 10
        }
        
        let duraing = (self*decimal).rounded()
        self = duraing/decimal
    }
    
    /**
     小数点第 decimalPlace 位で切り捨てる
    */
    public mutating func floorDecimal(decimalPlace: Int) {
        var decimal:Double = 10
        for _ in 0..<(decimalPlace) {
            decimal *= 10
        }
        
        let duraing = floor(self*decimal)
        self = duraing/decimal
    }
    
    /**
     小数点第 decimalPlace 位で切りあげる
    */
    public mutating func ceilDecimal(decimalPlace: Int) {
        var decimal:Double = 10
        for _ in 0..<(decimalPlace) {
            decimal *= 10
        }
        
        let duraing = floor(self*decimal)
        self = duraing/decimal
    }
}
