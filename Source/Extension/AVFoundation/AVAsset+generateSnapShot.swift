//
//  AVAssets.swift
//  prof_Vaz.inc
//
//  Created by Murawaki on 7/23/16.
//  Copyright © 2016 suzuki_k. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

public extension AVAsset {
    /**
     AVAssetから画像を生成する
     */
   public func generateSnapshotImage(captureSecond sec:Double, imageSize size:CGSize) -> UIImage! {
        guard sec >= 0 && self.duration.seconds > sec else {
            print("動画の時間が0.5秒未満か、設定された取得時間が動画の時間外です")
            return nil
        }
        
        let generator = AVAssetImageGenerator(asset: self)
        generator.requestedTimeToleranceBefore = kCMTimeZero
        generator.requestedTimeToleranceAfter = kCMTimeZero
        generator.maximumSize = size

        do {
            let capImage: CGImage = try generator.copyCGImage(at: CMTimeMakeWithSeconds(sec, Int32(NSEC_PER_SEC)), actualTime: nil)
            return UIImage(cgImage: capImage)
        } catch let error as NSError {
            print("画像生成失敗")
            print(error)
            return nil
        }
    }
}
