//
//  Post.swift
//  SwiftUIProject
//
//  Created by Gonca Gül on 5.02.2024.
//

import Foundation

struct Post: Identifiable, Codable {
    let id: String
    let videoUrl:String
    let userName: String
    let description: String
    let likeNumber: String
    let commentNumber: String
}
