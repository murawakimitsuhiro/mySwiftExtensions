//
//  UIAlert+Controller.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import UIKit


public extension UIAlertController {
    
    public static func showOneButtonAlert(_ title: String?, message: String?, controler:UIViewController) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        controler.present(alert, animated: true, completion: nil)
    }
}
