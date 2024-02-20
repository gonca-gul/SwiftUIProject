//
//  BottomVideoComponent.swift
//  SwiftUIProject
//
//  Created by Gonca Gül on 13.02.2024.
//

import SwiftUI

struct BottomVideoComponent: View {
    @StateObject var player = VideoPlayerModel()
    @GestureState var gestureOffset : CGFloat = 0
    
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                }.onTapGesture {
                    withAnimation{player.showPlayer.toggle()}
                }
               
            if player.showPlayer{
                MiniPlayer()
                    .transition(.move(edge: .bottom))
                    .offset(y: player.offset)
                    .gesture(DragGesture()
                        .updating($gestureOffset, body: { (value, state, _)in
                            state = value.translation.height
                        })
                        .onEnded(onEnd(value:)))
                    .frame(height: player.isMiniPlayer ? 64 : UIScreen.main.bounds.height)

            }
        }
        .frame(maxWidth: .infinity, maxHeight: player.isMiniPlayer ? 64 : .infinity)
        .onChange(of: gestureOffset, perform: {value in
            onChanged()
        })
        .environmentObject(player)
    }
    
    func onChanged(){
        if gestureOffset >= 0 && !player.isMiniPlayer{
            player.offset = gestureOffset
        }
    }
    func onEnd(value:DragGesture.Value){
        withAnimation(.default){
            
            if !player.isMiniPlayer{
                
                player.offset = 0
                
                if value.translation.height >
                    UIScreen.main.bounds.height / 3{
                    
                    player.isMiniPlayer = true
                }
                else{
                    player.isMiniPlayer = false
                }
            }
        }
    }
  
}

#Preview {
    BottomVideoComponent()
}
