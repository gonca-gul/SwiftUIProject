//
//  Home.swift
//  SwiftUIProject
//
//  Created by Gonca Gül on 1.02.2024.
//

import SwiftUI

struct Home: View {
    @StateObject var viewModel = FeedViewModel()
    
    var body: some View {
        ScrollView{
            LazyVStack(spacing:0){
                ForEach(viewModel.posts){ post in
                    FeedCell(post: post)
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
    }
}

#Preview {
    Home()
}
