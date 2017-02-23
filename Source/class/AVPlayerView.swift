//
//  PFAVPlayerView.swift
//  prof_Vaz.inc
//
//  Created by suzuki_k on 2016/05/11.
//  Copyright © 2016年 suzuki_k. All rights reserved.
//

import UIKit
import AVFoundation

public class PFAVPlayerView: UIView {
    
    public var playLayer: AVPlayerLayer {
        return self.layer as! AVPlayerLayer
    }
    
    // レイヤーをAVPlayerLayerにする為のラッパークラス.
    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override public class var layerClass: AnyClass {
        return AVPlayerLayer.self
    }
}
