//
//  UIView+IBSettings.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    @IBInspectable
    public var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
            self.layer.masksToBounds = true
        }
    }
    
    @IBInspectable
    public var circle: Bool {
        get {
            return self.circle
        }
        
        set {
            if newValue {
                layer.cornerRadius = frame.width/2
                layer.masksToBounds = true
            } else {
                layer.cornerRadius = 0
                layer.masksToBounds = false
            }
        }
    }
    
    @IBInspectable
    public var borderWidth: CGFloat {
        get {
            return self.layer.borderWidth
        }
        set {
            self.layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    public var borderColor: UIColor? {
        get {
            return UIColor(cgColor: self.layer.borderColor!)
        }
        
        set {
            self.layer.borderColor = newValue?.cgColor
        }
    }
    
    @IBInspectable
    public var masksToBounds: Bool {
        get {
            return self.layer.masksToBounds
        }
        
        set {
            self.layer.masksToBounds = newValue
        }
    }
}
