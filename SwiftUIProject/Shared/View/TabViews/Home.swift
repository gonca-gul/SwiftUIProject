//
//  Home.swift
//  SwiftUIProject
//
//  Created by Gonca Gül on 1.02.2024.
//

import SwiftUI
import AVKit

struct Home: View {
    @StateObject var viewModel = FeedViewModel()
    @State private var scrollPosition : String?
    @State private var player = AVPlayer()
    
    var body: some View {
        ScrollView{
            LazyVStack(spacing:0){
                ForEach(viewModel.posts){ post in
                    FeedCell(post: post , player: player)
                        .id(post.id)
                        .onAppear{ playInitialVideoIfNeccasery() }
                }
            }
            .scrollTargetLayout()
        }
        .onAppear{ player.play()}
        .scrollPosition(id: $scrollPosition)
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .onChange(of: scrollPosition){oldValue , newValue in
            playVideOnChangeOfScrollPosition(postId: newValue)
            
        }
    }
    
    func playInitialVideoIfNeccasery(){
        guard
            scrollPosition == nil,
            let post = viewModel.posts.first,
            player.currentItem == nil else{return}
        if let videoURL = URL(string: post.videoUrl) {
            let item = AVPlayerItem(url: videoURL)
            player.replaceCurrentItem(with: item)
        } else {
            print("Geçerli bir video URL'si sağlanmadı.")
        }
    }
    
    func playVideOnChangeOfScrollPosition(postId: String?){
        guard let currentPost = viewModel.posts.first(where: { $0.id == postId}) else {return}
        player.replaceCurrentItem(with: nil)
        if let videoURL = URL(string: currentPost.videoUrl) {
            let playerItem = AVPlayerItem(url: videoURL)
            player.replaceCurrentItem(with: playerItem)
        } else {
            print("Geçerli bir video URL'si sağlanmadı.")
        }
    }

}

#Preview {
    Home()
}
