//
//  NSObject+ScreenSize.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/26.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

extension NSObject {
    var screenSize: CGSize {
        let screenSize = UIScreen.main.bounds.size;
        if NSFoundationVersionNumber <= NSFoundationVersionNumber_iOS_7_1
            && UIInterfaceOrientationIsLandscape(UIApplication.shared.statusBarOrientation) {
            return CGSize(width: screenSize.height, height: screenSize.width)
        }
        return screenSize
    }
}
