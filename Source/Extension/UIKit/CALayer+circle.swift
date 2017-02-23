//
//  CALayer+circle.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

public extension CALayer {
    /**
     layerを簡易的に丸くする。
     - attention: frame.sizeが変わるたびに呼ばないと円形を保てない。 (layoutSubViewsで呼ぶことを推奨)
     */
    func adjustCircle() {
        self.cornerRadius = self.frame.width/2
        self.masksToBounds = true
    }
}
