//
//  UIImageVIew+cropSquare.swift
//  mySwiftExtension
//
//  Created by Murawaki on 2017/02/20.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

public extension UIImage {
    /**
     短い辺に合わせてトリミング
     */
    public func cropImageToSquare() -> UIImage? {
        let image = self
        if image.size.width > image.size.height {
            // 横長
            let cropCGImageRef = image.cgImage!.cropping(to: CGRect(x: image.size.width/2 - image.size.height/2, y: 0, width: image.size.height, height: image.size.height))
            
            return UIImage(cgImage: cropCGImageRef!)
        } else if image.size.width < image.size.height {
            // 縦長
            let cropCGImageRef = image.cgImage!.cropping(to: CGRect(x: 0, y: 0, width: image.size.width, height: image.size.width))
            
            return UIImage(cgImage: cropCGImageRef!)
        } else {
            return image
        }
    }
    
    /**
     渡されたRectでトリミング
     */
    public func clopWithRect(_ rect:CGRect) -> UIImage {
        let left = rect.minX * scale
        let top = rect.minY * scale
        let w = rect.width * scale
        let h = rect.height * scale
        
        let cropRect = CGRect( origin: CGPoint(x: left, y: top), size: CGSize(width: w, height: h) )
        
        let cropCGImageRef = cgImage!.cropping(to: cropRect)
        return UIImage(cgImage: cropCGImageRef!)
    }
    
    /**
     撮影時のメタデータの方向をリセットする
     */
    public func resetDirection() -> UIImage {
        print(UIImageOrientation.right.rawValue)
        let image = UIImage(cgImage: cgImage!, scale: self.scale, orientation: UIImageOrientation.right)
        let imageRect = CGRect(x: 0, y: 0, width: self.size.width, height: self.size.height)
        UIGraphicsBeginImageContext(size)
        
        image.draw(in: imageRect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }
}
