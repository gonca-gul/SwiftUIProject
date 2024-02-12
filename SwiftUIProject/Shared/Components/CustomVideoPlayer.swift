//
//  CustomVideoPlayer.swift
//  SwiftUIProject
//
//  Created by Gonca Gül on 5.02.2024.
//

import SwiftUI
import AVKit

struct CustomVideoPlayer: UIViewControllerRepresentable{
    var player: AVPlayer
    
    func makeUIViewController(context: Context) -> UIViewController {
        let controller = AVPlayerViewController()
        controller.player = player
        controller.showsPlaybackControls = false
        controller.exitsFullScreenWhenPlaybackEnds = true
        controller.allowsPictureInPicturePlayback = true
        controller.videoGravity = .resizeAspectFill

        return controller
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
}
