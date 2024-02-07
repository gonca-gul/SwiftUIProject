//
//  OnBoardingPage.swift
//  SwiftUIProject
//
//  Created by Gonca Gül on 30.01.2024.
//

import SwiftUI

struct OnBoardingPage: View {
    @State var showLoginPage: Bool = false
    var body: some View {
        VStack(alignment: .leading){
            Text("Find Your\nGadget")
                .font(.custom("Arial-BoldMT", size: 45))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .padding(.horizontal,30)
            Image("Gamers")
                .resizable()
                .aspectRatio(contentMode: .fit)
               
            Button{
                withAnimation{
                    showLoginPage = true
                }
            }label: {
                Text("Get Started")
                    .font(.custom("Arial-BoldMT", size: 17))
                    .fontWeight(.semibold)
                    .padding(.vertical,18)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.5),
                        radius: 5,x:5,y:5)
                    .foregroundColor(Color.purple)
                
            }
            .padding(.horizontal,30)
            .offset(y: getRect().height<750 ?60:80)
                
        }
        .frame(maxWidth: .infinity , maxHeight: .infinity)
        .background(Color.purple)
        .overlay(
            Group{
                if showLoginPage{
                    LoginPage()
                        .transition(.move(edge: .bottom))
                }
            }
        )
    }
}

#Preview {
    OnBoardingPage()
}
extension View{
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}
