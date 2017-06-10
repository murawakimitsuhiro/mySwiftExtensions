//
//  Date+componetns.swift
//  PROF_vaz.inc
//
//  Created by Murawaki on 11/19/16.
//  Copyright © 2016 suzuki_k. All rights reserved.
//

import Foundation

public extension Date {
    public var year:Int {
        get {
            return NSCalendar.current.component(.year, from: self)
        }
        set(newValue) {
            let comp = NSDateComponents()
            comp.year = newValue
            comp.month = self.month
            comp.day = self.day
            let time = NSCalendar.current.date(from: comp as DateComponents)
            self = time!
        }
    }
    
    public var month:Int {
        get {
            return NSCalendar.current.component(.month, from: self)
        }
        set(newValue) {
            let comp = NSDateComponents()
            comp.year = self.year
            comp.month = newValue
            comp.day = self.day
            let time = NSCalendar.current.date(from: comp as DateComponents)
            self = time!
        }
    }
    
    public var day:Int {
        get {
           return NSCalendar.current.component(.day, from: self)
        }
        set(newValue) {
            let comp = NSDateComponents()
            comp.year = self.year
            comp.month = self.month
            comp.day = newValue
            let time = NSCalendar.current.date(from: comp as DateComponents)
            self = time!
        }
    }
}
