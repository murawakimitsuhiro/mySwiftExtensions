//
//  UIViewController+PopUp.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.

import Foundation
import UIKit

public extension UIViewController {
    /** UIViewControllerをポップ形式で表示 (iPadのAlertViewライク) */
    public func presentPopver(viewController: UIViewController!,
                              size: CGSize,
                              sourceView:UIView,
                              popoverDelegate:UIPopoverPresentationControllerDelegate,
                              direction:UIPopoverArrowDirection = .down) {
        
        viewController.modalPresentationStyle = UIModalPresentationStyle.popover
        viewController.preferredContentSize = size
        
        let popoverController = viewController.popoverPresentationController
        popoverController!.delegate = popoverDelegate
        // 出す向き(DownはsourceViewの上)
        popoverController?.permittedArrowDirections = .down
        // どこから出た感じにするか
        popoverController?.sourceView = sourceView
        popoverController?.sourceRect = sourceView.bounds
        
        present(viewController, animated: true, completion: nil)
    }
    
    @objc(adaptivePresentationStyleForPresentationController:) public func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.none
    }
}
