//
//  UIGestureRecognizerClosure.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import UIKit

private var target = [Target]()

public extension UIGestureRecognizer {
	
    /**
     クロージャ形式でGestureRecognizerを設定
     */
	public convenience init(trailingClosure closure: @escaping ((UIGestureRecognizer) -> Void)) {
		self.init()
		
		target.append(Target(closure))
		self.addTarget(target.last!, action: #selector(Target.invoke))
	}
}

private class Target {
	
	fileprivate var trailingClosure: ((UIGestureRecognizer) -> Void)
	
	init(_ closure: @escaping ((UIGestureRecognizer) -> Void)) {
		trailingClosure = closure
	}
    
    @objc func invoke(gesture: UIGestureRecognizer) {
		trailingClosure(gesture)
	}
}
