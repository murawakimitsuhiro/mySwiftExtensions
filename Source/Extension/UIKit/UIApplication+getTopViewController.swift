//
//  UIViewController+getRootViewController.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

public extension UIApplication {
    /** Usage: UIApplication.shared.topViewController */
    public var topViewController: UIViewController? {
        guard var topViewController = UIApplication.shared.keyWindow?.rootViewController else { return nil }
        
        while let presentedViewController = topViewController.presentedViewController {
            topViewController = presentedViewController
        }
        return topViewController
    }
    
    /** Usage: UIApplication.shared.topNavigationController */
    public var topNavigationController: UINavigationController? {
        return topViewController as? UINavigationController
    }
}
