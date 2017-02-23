//
//  movieConvertMp4.swift
//  prof_Vaz.inc
//
//  Created by ramia on 2016/07/24.
//  Copyright © 2016年 suzuki_k. All rights reserved.
//

import AVFoundation

extension AVAsset {
    
    /**
     mp4に変換する
     */
    public func exportVideo(callback: @escaping ((URL?) -> Void)) {
        AVAsset.exportVideo(self, callback: callback)
    }
    
    /**
     指定したAssetをmp4に変換する
     */
	public static func exportVideo(_ asset: AVAsset, callback: @escaping ((URL?) -> Void)) {
		var exportSession: AVAssetExportSession?
		let exportDocsStr: NSString
		let exportFileStr: NSString
		let exportFileUrl: URL
		
		exportDocsStr = (NSHomeDirectory() as NSString).appendingPathComponent("Documents") as NSString
		exportFileStr = NSString(string: "\(exportDocsStr)/upLoad_movieFile.mp4")
		exportFileUrl = URL(fileURLWithPath: exportFileStr as String)
		
		if FileManager.default.fileExists(atPath: exportFileStr as String) {
			do {
				try FileManager.default.removeItem(atPath: exportFileStr as String)
			} catch {
				print("movieConvertMp4 ファイル領域の確保に失敗")
			}
		}
		
		let outputPreseName: String = AVAssetExportPresetMediumQuality
		exportSession = AVAssetExportSession(asset: asset, presetName: outputPreseName)
		exportSession!.outputURL = exportFileUrl
		exportSession!.outputFileType = AVFileTypeMPEG4
		exportSession!.shouldOptimizeForNetworkUse = true
		exportSession!.exportAsynchronously(completionHandler: {
            
			switch exportSession!.status {
                
			case AVAssetExportSessionStatus.cancelled:
				print("movieConvertMp4 キャンセル")
				DispatchQueue.main.sync {
					callback(nil)
				}
                
			case AVAssetExportSessionStatus.failed:
				print("movieConvertMp4 failed")
				DispatchQueue.main.sync {
					callback(nil)
				}
                
			case AVAssetExportSessionStatus.completed:
				print("\n movieConvertMp4 Succes\n")
				
				DispatchQueue.main.sync {
					callback(exportSession!.outputURL!)
				}
                
			case AVAssetExportSessionStatus.unknown:
				print(" movieConvertMp4 uncknow")
                break
                
			case AVAssetExportSessionStatus.exporting:
				print(" movieConvertMp4 exporting")
                
			case AVAssetExportSessionStatus.waiting:
				print(" movieConvertMp4 waiting")
                break
			}
		})
	}
}
