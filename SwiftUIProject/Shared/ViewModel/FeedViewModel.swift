//
//  FeedViewModel.swift
//  SwiftUIProject
//
//  Created by Gonca Gül on 5.02.2024.
//

import SwiftUI
import Foundation

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    let videoUrls = [
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4" ,
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4"
        
    ]
    let userNames = [
        "gonca.gul",
        "zehra.alkan",
        "kubra.gureler",
        "ahmetcan.turan",
        "abdullah.obaid",
        "sinan.sert"
    ]
    let descriptions = [
        "Big Buck Bunny tells the story of a giant rabbit with a heart bigger than himself",
        "Introducing Chromecast. The easiest way to enjoy online video and music on your TV",
        "Tears of Steel was realized with crowd-funding by users of the open source 3D creation tool Blender",
        "Sintel is an independently produced short film",
        "The Smoking Tire heads out to Adams Motorsports Park in Riversid",
        "The Smoking Tire heads out to Adams Motorsports Park in Riversid"
    ]
    init(){
        fetchPosts()
    }
    func fetchPosts() {
        self.posts = [
            .init(id: NSUUID().uuidString, videoUrl: videoUrls[0],userName: userNames[0],description: descriptions[0],likeNumber: "234",commentNumber: "3.1k"),
            .init(id: NSUUID().uuidString, videoUrl: videoUrls[1],userName: userNames[1],description: descriptions[1],likeNumber: "34",commentNumber: "2.7k"),
            .init(id: NSUUID().uuidString, videoUrl: videoUrls[2],userName: userNames[2],description: descriptions[2],likeNumber: "453",commentNumber: "1.1k"),
            .init(id: NSUUID().uuidString, videoUrl: videoUrls[3],userName: userNames[3],description: descriptions[3],likeNumber: "89",commentNumber: "34.1k"),
            .init(id: NSUUID().uuidString, videoUrl: videoUrls[4],userName: userNames[4],description: descriptions[4],likeNumber: "984",commentNumber: "5.6k"),
            .init(id: NSUUID().uuidString, videoUrl: videoUrls[5],userName: userNames[5],description: descriptions[5],likeNumber: "1123",commentNumber: "58.6k"),
        ]
    }
}
