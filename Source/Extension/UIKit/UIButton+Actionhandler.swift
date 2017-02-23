//
//  UIButton+Actionhandler.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

public extension UIButton {
    fileprivate func actionHandleBlock(_ action:(() -> Void)? = nil) {
        struct __ {
            static var action :(() -> Void)?
        }
        if action != nil {
            __.action = action
        } else {
            __.action?()
        }
    }
    
    @objc fileprivate func triggerActionHandleBlock() {
        actionHandleBlock()
    }
    
    /**
     クロージャ形式でボタンのアクションを追加
     */
    public func actionHandle(controlEvents control :UIControlEvents, ForAction action:@escaping () -> Void) {
        actionHandleBlock(action)
        addTarget(self, action: #selector(UIButton.triggerActionHandleBlock), for: control)
    }
}
