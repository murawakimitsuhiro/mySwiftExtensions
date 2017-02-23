//
//  UIView+maskView.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    /** 指定されたRect部分のみ表示する */
    public func setMaskRect(rect: CGRect) {
        let maskView = UIView(frame: rect)
        maskView.backgroundColor = UIColor.white
        maskView.backgroundColor?.withAlphaComponent(0.3)
        mask = maskView
    }
    
    /** 指定されたRectをくり抜く(穴を開ける) */
    public func setClipRect(rect: CGRect) {
        let maskLayer = CAShapeLayer()
        maskLayer.bounds = self.layer.bounds
        
        let path =  UIBezierPath(rect: rect)
        path.append(UIBezierPath(rect: maskLayer.bounds))
        
        maskLayer.fillColor = UIColor.black.cgColor
        maskLayer.path = path.cgPath
        maskLayer.position = CGPoint(
            x: self.layer.bounds.width / 2.0,
            y: self.layer.bounds.height / 2.0
        )
        // マスクのルールをeven/oddに設定する
        maskLayer.fillRule = kCAFillRuleEvenOdd
        
        self.layer.mask = maskLayer
    }
}
