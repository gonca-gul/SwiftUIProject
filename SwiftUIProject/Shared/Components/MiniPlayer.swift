//
//  MiniPlayer.swift
//  SwiftUIProject
//
//  Created by Gonca Gül on 13.02.2024.
//

import SwiftUI

struct MiniPlayer: View {
    
    @EnvironmentObject var player : VideoPlayerModel
    var body: some View {
        VStack(spacing:0){
            HStack {
                VideoPlayerView()
                    .cornerRadius(5)
                    .padding(.vertical,4)
                    .frame(width: player.isMiniPlayer ? 97 : 420,
                           height: getFrame())
                Text("Live TV")
                    
            }.padding(.horizontal,3)
            .frame(maxWidth: .infinity, alignment: .leading)
                .background(
                VideoControls()
                )
            GeometryReader { reader in
                ScrollView{
                    VStack {
                        VStack(alignment:.center){
                            Text("Live Coverage: War on Gaza")
                              .font(Font.custom("Noto Sans", size: 24))
                              .foregroundColor(Color(red: 0.78, green: 0, blue: 0))
                        }.padding(.top,38)
                            .padding(.bottom,20)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        VStack {
                            HStack {
                                Text("2 mins ago")
                                    .font(Font.custom("SF Pro Text", size: 12))
                                    .kerning(0.5)
                                    .foregroundColor(Color(red: 0.02, green: 0.59, blue: 0.62))
                                    .frame(width: 127, height: 17, alignment: .leading)
                                    .padding(.horizontal,27)
                                Spacer()
                          
                            }
                            .frame(maxWidth: .infinity)
                            .frame(width: .infinity)
                        }
                        VStack() {
                            VStack(alignment:.center){
                                HStack{
                                    Text("Palestinian man dies in occupied West Bank after being shot by Israeli soldiers")
                                      .font(
                                        Font.custom("SF Pro Text", size: 18)
                                          .weight(.bold)
                                      )
                                      .foregroundColor(Color(hex:"#007BA7"))
                                      .frame(width: 334, alignment: .topLeading)
                                    
                                }.padding()
                                Text("Our correspondents are reporting that Muhammad Ahmad, a resident of the town of Biddu, north of West Jerusalem has died.")
                                  .font(Font.custom("SF Pro Display", size: 16))
                                  .foregroundColor(Color(red: 0.41, green: 0.41, blue: 0.41))
                                  .frame(width: 334, alignment: .topLeading)
                                  .padding(.horizontal)
                                    Divider()
                                    .padding(.top)
                                        .background(Color.white)
                                        
                                    HStack(spacing:6){
                                        ZStack{
                                            Rectangle()
                                                .foregroundColor(Color(hex:"#2BC1E6"))
                                                .frame(width: 83,height: 32)
                                                .cornerRadius(26)
                                            Text("Afrika")
                                            .font(
                                            Font.custom("Arial-BoldMT", size: 12)
                                             .bold()
                                            )
                                            .foregroundColor(.white)
                                        } .frame(maxWidth: .infinity, alignment: .leading)

                                        Image("heart2")
                                            .frame(width: 24,height: 24)
                                        Text("21")
                                        .font(
                                        Font.custom("SF Pro Text", size: 14)
                                        .weight(.bold)
                                        ).foregroundColor(Color(hex:"#959595"))
                                        Image("paperplane")
                                            .resizable()
                                            .frame(width: 24,height: 24)
                                        Image("bookmark2")
                                            .resizable()
                                            .frame(width: 24,height: 24)
                                    }.padding()
                            }
                            }
                    .background(Color(hex:"ffffff"))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .padding(.bottom)
                        VStack {
                            HStack {
                                Text("2 mins ago")
                                    .font(Font.custom("SF Pro Text", size: 12))
                                    .kerning(0.5)
                                    .foregroundColor(Color(red: 0.02, green: 0.59, blue: 0.62))
                                    .frame(width: 127, height: 17, alignment: .leading)
                                    .padding(.horizontal,27)
                                Spacer()
                            }
                            .frame(maxWidth: .infinity)
                            .frame(width: .infinity)
                        }
                        VStack() {
                            VStack(alignment:.center){
                                HStack{
                                    Text("Palestinian man dies in occupied West Bank after being shot by Israeli soldiers")
                                      .font(
                                        Font.custom("SF Pro Text", size: 18)
                                          .weight(.bold)
                                      )
                                      .foregroundColor(Color(hex:"#007BA7"))
                                      .frame(width: 334, alignment: .topLeading)
                                    
                                }.padding()
                                Text("Our correspondents are reporting that Muhammad Ahmad, a resident of the town of Biddu, north of West Jerusalem has died.")
                                  .font(Font.custom("SF Pro Display", size: 16))
                                  .foregroundColor(Color(red: 0.41, green: 0.41, blue: 0.41))
                                  .frame(width: 334, alignment: .topLeading)
                                  .padding(.horizontal)
                                    Divider()
                                    .padding(.top)
                                        .background(Color.white)
                                        
                                    HStack(spacing:6){
                                        ZStack{
                                            Rectangle()
                                                .foregroundColor(Color(hex:"#2BC1E6"))
                                                .frame(width: 83,height: 32)
                                                .cornerRadius(26)
                                            Text("Afrika")
                                            .font(
                                            Font.custom("Arial-BoldMT", size: 12)
                                             .bold()
                                            )
                                            .foregroundColor(.white)
                                        } .frame(maxWidth: .infinity, alignment: .leading)

                                        Image("heart2")
                                            .frame(width: 24,height: 24)
                                        Text("21")
                                        .font(
                                        Font.custom("SF Pro Text", size: 14)
                                        .weight(.bold)
                                        ).foregroundColor(Color(hex:"#959595"))
                                        Image("paperplane")
                                            .resizable()
                                            .frame(width: 24,height: 24)
                                        Image("bookmark2")
                                            .resizable()
                                            .frame(width: 24,height: 24)
                                    }.padding()
                            }
                            }
                    .background(Color(hex:"ffffff"))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    }.padding(.bottom,150)
                }
                .onAppear {
                    if !player.isMiniPlayer {
                        player.height = reader.frame(in: .global).height + 250
                    }
                }
                
            }
            .background(Color(red: 0.94, green: 0.94, blue: 0.96))
            .opacity(player.isMiniPlayer ? 0 : getOpacity())
            .frame(height:  player.isMiniPlayer ? 0 : nil)
        }.background(.white.opacity(0.9))
        
            .shadow(color: .white.opacity(0), radius: 4.55, x: 0, y: 0)
            .overlay(
            Rectangle()
                .stroke(Color.white, lineWidth: 0.5)

            )
            .overlay(
            Rectangle()
            .stroke(.black.opacity(0.3), lineWidth: 0.5)

            )
        .cornerRadius(5)
        .onTapGesture {
            withAnimation{
                player.width = UIScreen.main.bounds.width
                player.isMiniPlayer.toggle()
            }
        }
    }

    func getFrame()-> CGFloat{
        if player.isMiniPlayer {
            return 64
        } else {
            return 210
        }
    }

    func getOpacity()->Double{
        
        let progress = player.offset / (player.height - 100)
        if progress <= 1{
            return Double(1 - progress)
        }
        return 1
    }
}

struct VideoControls : View {
    @EnvironmentObject var player: VideoPlayerModel
    
    var body: some View{
        
        HStack(spacing: 15){
            
            VStack(alignment: .leading, spacing: 6, content: {
            })
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image("speakerSlash")
                
            })
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image("pause")
                
            })
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image("expandWide")
                
            })
            
        }.padding()
    }
}
#Preview {
    BottomVideoComponent()
}
