//
//  UIAlert+Controller.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import UIKit

public extension UIAlertController {
    
    public static func showOneButtonAlert(_ title: String?, message: String?, controller: UIViewController) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        controller.present(alert, animated: true, completion: nil)
    }
    
    public static func showTextInputAlert(_ title: String?,
                                          message: String?,
                                          controller: UIViewController,
                                          defaultText: String = "",
                                          editedSelector: Selector,
                                          isSeacret: Bool = false) {
        let alert: UIAlertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (action: UIAlertAction!) -> Void in
            NotificationCenter.default.removeObserver(controller, name: NSNotification.Name.UITextFieldTextDidChange, object: nil)
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.destructive) { (action: UIAlertAction!) -> Void in
            NotificationCenter.default.removeObserver(controller, name: NSNotification.Name.UITextFieldTextDidChange, object: nil)
        }
        
        alert.addTextField { (textField: UITextField!) -> Void in
            
            textField.text = defaultText
            textField.isSecureTextEntry = isSeacret
            
            NotificationCenter.default.addObserver(controller, selector: editedSelector, name: NSNotification.Name.UITextFieldTextDidEndEditing, object: nil)
        }
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        controller.present(alert, animated: true, completion: nil)
    }
}
