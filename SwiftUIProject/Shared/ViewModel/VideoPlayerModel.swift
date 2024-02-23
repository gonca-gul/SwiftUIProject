//
//  VideoPlayerModel.swift
//  SwiftUIProject
//
//  Created by Gonca Gül on 13.02.2024.
//

import SwiftUI
import AVKit
class VideoPlayerModel: ObservableObject {
    @Published var showPlayer = true
    @Published var offset: CGFloat = 0
    @Published var height: CGFloat = 0
    @Published var width: CGFloat = UIScreen.main.bounds.width
    @Published var isMiniPlayer = true
    @Published var isPlaying = false
}



