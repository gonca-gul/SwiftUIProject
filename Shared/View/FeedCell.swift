//
//  FeedCell.swift
//  SwiftUIProject
//
//  Created by Gonca Gül on 2.02.2024.
//

import SwiftUI
import AVKit

struct FeedCell: View {
    let post: Post
    var player: AVPlayer
    
    init(post: Post){
        self.post = post
        self.player = AVPlayer(url: URL(string: post.videoUrl)!)
    }
    
    var body: some View {
        ZStack{
            CustomVideoPlayer(player: player)
                .containerRelativeFrame([.horizontal, .vertical])
            VStack{
                Spacer()
                HStack(alignment:.bottom){
                    VStack(alignment: .leading){
                        Text(post.userName)
                            .fontWeight(.semibold)
                        Text(post.description)
                    }
                    .foregroundColor(.white)
                    .font(.subheadline)
                    Spacer()
                    VStack(spacing:28){
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, 
                               label: {
                            VStack{
                                Image("heart")
                                    .resizable()
                                    .frame(width: 50,height: 50)
                                Text(post.likeNumber)
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .bold()
                                    .padding(-7)
                            }
                        })
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            VStack{
                                Image("comment")
                                    .resizable()
                                    .frame(width: 50,height: 50)
                                Text(post.commentNumber)
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .bold()
                                    .padding(-7)
                            }
                        })
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("bookmark")
                                .resizable()
                                .frame(width: 60,height: 50)
                            
                        })
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("send")
                                .resizable()
                                .frame(width: 36,height: 36)
                        })
                    }
                   
                }               
            }
            .padding()
            .padding(.bottom,40)
        }
        .onAppear {
            player.play()
        }
    }
}

#Preview {
    FeedCell(post: Post(id: NSUUID().uuidString, videoUrl:"",userName:"",description:"",likeNumber: "",commentNumber: ""))
}
