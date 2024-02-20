//
//  HomePage.swift
//  SwiftUIProject
//
//  Created by Gonca Gül on 1.02.2024.
//

import SwiftUI

struct HomePage: View {
    @State var currentTab = Tab .News
    init(){
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        VStack(spacing:0){
            TabView(selection: $currentTab){
                Home()
                    .tag(Tab.Home)
                News().tag(Tab.News)
                Text("SearchTab").tag(Tab.Search)
                Text("Audio").tag(Tab.Audio)
                Text("Menu").tag(Tab.Menu)
            }
            
            HStack(spacing:50){
                ForEach(Tab.allCases,id:\.self){tab in
                    Button{
                        currentTab = tab
                    } label: {
                        VStack {
                                Image(tab.rawValue)
                                .padding(.bottom, tab.rawValue == "Search" ? 40 : 0)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 24,height: 24)
                                    .foregroundColor(currentTab == tab ? (Color(hex:"#007BA7")): (Color(red: 0.41, green: 0.41, blue: 0.41)))
                            Text(tab.rawValue)
                                .font(.system(size: 10)) // İsim font boyutunu ayarla
                                .foregroundColor(currentTab == tab ? (Color(hex:"#007BA7")): (Color(red: 0.41, green: 0.41, blue: 0.41)))
                        }
                    }
                }
            }

            .padding([.horizontal,.top])
            .padding(.bottom,0)
            
        }
    }
}

#Preview {
    HomePage()
}
enum Tab: String , CaseIterable{
    case Home = "Daily"
    case News = "News"
    case Search = "Search"
    case Audio = "Audio"
    case Menu = "Menu"
}
