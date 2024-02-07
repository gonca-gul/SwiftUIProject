//
//  HomePage.swift
//  SwiftUIProject
//
//  Created by Gonca Gül on 1.02.2024.
//

import SwiftUI

struct HomePage: View {
    @State var currentTab = Tab .Home
    init(){
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        VStack(spacing:0){
            TabView(selection: $currentTab){
                Home()
                    .tag(Tab.Home)
                Text("Liked").tag(Tab.Liked)
                Text("Profile").tag(Tab.Profile)
                Text("Cart").tag(Tab.Cart)
            }
            HStack(spacing:0){
                ForEach(Tab.allCases,id:\.self){tab in
                    Button{
                        currentTab = tab
                    } label: {
                        Image(tab.rawValue)
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .background(
                                Color.purple
                                    .opacity(0.1)
                                    .blur(radius: 3)
                                    .padding(-12)
                                    .opacity(currentTab == tab ? 1 : 0)
                                
                            )
                            .frame(width: 24,height: 24)
                            .frame(maxWidth:.infinity)
                            .foregroundColor(currentTab == tab ? (Color.purple): (Color.black.opacity(0.4)))
                        
                    }
                }
                
            }
            .padding([.horizontal,.top])
            .padding(.bottom,10)
            
        }
    }
}

#Preview {
    HomePage()
}
enum Tab: String , CaseIterable{
    case Home = "Home"
    case Liked = "Liked"
    case Profile = "Profile"
    case Cart = "Cart"
}
