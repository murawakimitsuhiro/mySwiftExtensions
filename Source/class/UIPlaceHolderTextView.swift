//
//  UIPlaceHolderTextView.swift
//  PROF_vaz.inc
//
//  Created by ramia on 2016/11/03.
//  Copyright © 2016年 suzuki_k. All rights reserved.
//

import UIKit

open class UIPlaceHolderTextView: UITextView {
	lazy var placeHolderLabel: UILabel = UILabel()
	var placeHolderColor: UIColor      = UIColor(red: 216, green: 216, blue: 216, alpha: 1.0)
	
    @IBInspectable
    var placeHolder:NSString          = ""
	
	deinit {
		NotificationCenter.default.removeObserver(self)
	}
	
	override open func awakeFromNib() {
		super.awakeFromNib()
		
		NotificationCenter.default.addObserver(self, selector: #selector(UIPlaceHolderTextView.textChanged(_:)), name: NSNotification.Name.UITextViewTextDidChange, object: nil)
	}
    
	override open func draw(_ rect: CGRect) {
		if self.placeHolder.length > 0 {
			self.placeHolderLabel.frame           = CGRect(x: 8, y: 8, width: self.bounds.size.width - 16, height: 0)
			self.placeHolderLabel.lineBreakMode   = NSLineBreakMode.byWordWrapping
			self.placeHolderLabel.numberOfLines   = 0
			self.placeHolderLabel.font            = self.font
			self.placeHolderLabel.backgroundColor = UIColor.clear
			self.placeHolderLabel.textColor       = self.placeHolderColor
			self.placeHolderLabel.alpha           = 0
			self.placeHolderLabel.tag             = 999
			
			self.placeHolderLabel.text = self.placeHolder as String
			self.placeHolderLabel.sizeToFit()
			self.addSubview(placeHolderLabel)
		}
		
		self.sendSubview(toBack: placeHolderLabel)
		
		if self.text.utf16.count == 0 && self.placeHolder.length > 0 {
			self.viewWithTag(999)?.alpha = 1
		}
		
		super.draw(rect)
	}
	
	open func textChanged(_ notification:Notification?) -> (Void) {
		if self.placeHolder.length == 0 {
			return
		}
		
		if self.text.utf16.count == 0 {
			self.viewWithTag(999)?.alpha = 1
        } else {
			self.viewWithTag(999)?.alpha = 0
		}
	}
	
}
