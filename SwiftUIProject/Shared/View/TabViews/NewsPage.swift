//
//  NewsPage.swift
//  SwiftUIProject
//
//  Created by Gonca Gül on 8.02.2024.
//

import SwiftUI
import AVKit

struct News: View {
   @State var isActiveForYou = true
    @State var isActiveFollowing = false
    let player = AVPlayer(url: URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4")!)

    var body: some View {
           VStack {
               HStack {
                   Spacer()
                   Button(action: {
                       isActiveForYou.toggle()
                       isActiveFollowing.toggle()
                   }) {
                       Text("For You")
                           .foregroundColor(isActiveForYou == true ? Color(hex: "#007BA7") : Color(hex: "#A1A1A1"))
                           .font(.custom("Arial-BoldMT", size: 16))
                           .padding(.horizontal,6)
                           .underline(isActiveForYou)
                   }
                   Button(action: {
                       isActiveForYou.toggle()
                       isActiveFollowing.toggle()
                   }) {
                       Text("Following")
                           .foregroundColor(isActiveFollowing == true ? Color(hex: "#007BA7") : Color(hex: "#A1A1A1"))
                           .font(.custom("Arial-BoldMT", size: 16))
                           .padding(.horizontal,6)
                           .underline(isActiveFollowing)                   }
                   Spacer()
               }
               ScrollView(showsIndicators:false){
                   ZStack() {
                       Image("topNews")
                           .aspectRatio(contentMode: .fill)
                           .frame(width: .infinity, height: .infinity)
                             .cornerRadius(16)
                       VStack(){
                           HStack(spacing:0){
                               Text("POLITICS")
                                 .font(
                                   Font.custom("Arial-BoldMT", size: 12)
                                     .weight(.bold)
                                 )
                                 .foregroundColor(.white.opacity(0.5))
                                   .frame(maxWidth: .infinity, alignment: .leading)
                               Image("threeDots")
                                   .resizable()
                                   .frame(width: 24,height: 24)
                           }
                           .padding(.horizontal, 24)
                           .padding(.bottom,280)
                           VStack(alignment: .leading){
                               Text("Azerbaijan issues final warning to Armenia in Karabakh clashes")
                                   .foregroundColor(.white)
                                   .font(.custom("Arial-BoldMT", size: 28))
                               Text("3 min read")
                                 .font(
                                   Font.custom("SF Pro Text", size: 14)
                                     .weight(.light)
                                 )
                                 .kerning(0.5)
                                 .foregroundColor(.white.opacity(0.5))
                                 .padding(.vertical,2)
                           }
                           Divider()
                               .background(Color.white)
                               .padding(.bottom,12)
                           HStack(spacing:6){
                               ZStack{
                                   Rectangle()
                                       .foregroundColor(Color(hex:"#2BC1E6"))
                                       .frame(width: 83,height: 32)
                                       .cornerRadius(26)
                                   Text("TRT World")
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
                           }.padding(.horizontal, 24)
                              
                       }.padding()
                       
               }
               Spacer()
                   VStack() {
                       VStack(alignment:.leading){
                           HStack(spacing:0){
                               Text("POLITICS")
                                 .font(
                                   Font.custom("Arial-BoldMT", size: 12)
                                 )
                                 .foregroundColor(Color(hex:"#007BA7"))
                                   .frame(maxWidth: .infinity, alignment: .leading)
                               Image("threeDots")
                                   .resizable()
                                   .frame(width: 24,height: 24)
                           }.padding(.horizontal)
                               .padding(.top)
                           VStack(alignment: .leading){
                           Text("Why is Kosovo becoming a museum in honour of US politicians?")
                             .font(
                               Font.custom("Arial-BoldMT", size: 20)
                                .bold()
                             )
                             .foregroundColor(.black)
                               VStack{
                                   Text("On 28 August 2020, Indian forces in Srinagar opened fire with “pellet guns” on a peaceful religious procession. More than forty people were wounded while several were blinded. As usual, Pakistan protested vehemently. ")
                                       .padding(.vertical)
                                     .font(Font.custom("SF Pro Display", size: 16))
                                     .foregroundColor(Color(red: 0.41, green: 0.41, blue: 0.41))
                               Image("image8")
                                   .resizable()
                                   .cornerRadius(5)
                                   .padding(.top)
                               }
                             
                                
                           }.padding()
                               Divider()
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
               .padding()
                   VStack() {
                       VStack(alignment:.leading){
                           HStack(spacing:0){
                               Text("POLITICS")
                                 .font(
                                   Font.custom("Arial-BoldMT", size: 12)
                                 )
                                 .foregroundColor(Color(hex:"#007BA7"))
                                   .frame(maxWidth: .infinity, alignment: .leading)
                               Image("threeDots")
                                   .resizable()
                                   .frame(width: 24,height: 24)
                           }.padding(.horizontal)
                               .padding(.top)
                           VStack(alignment: .leading){
                           Text("Tunisie: les zones fertiles ne sont plus épargnées par la sécheresse persistante?")
                             .font(
                               Font.custom("Arial-BoldMT", size: 20)
                                .bold()
                             )
                             .foregroundColor(.black)
                               VStack{
                                   Text("Nous sommes des vivants déjà morts, oubliés de tous. Nous n'avons ni route ni eau, ni aide ni logements décents, nous ne possédons rien, explique à l'AFP cette femme de 57 ans, au visage creusé par la fatigue.")
                                       .padding(.vertical)
                                     .font(Font.custom("SF Pro Display", size: 16))
                                     .foregroundColor(Color(red: 0.41, green: 0.41, blue: 0.41))
                               Image("image2")
                                   .resizable()
                                   .cornerRadius(5)
                                   .padding(.top)
                               }
                             
                                
                           }.padding()
                               Divider()
                                   .background(Color.white)
                               HStack(spacing:6){
                                   ZStack{
                                       Rectangle()
                                           .foregroundColor(Color(hex:"#2BC1E6"))
                                           .frame(width: 83,height: 32)
                                           .cornerRadius(26)
                                       Text("Français")
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
                   ZStack() {
                       VideoPlayer(player: player)
                           .onAppear {
                               player.pause()
                           }
                           .onDisappear {
                               player.pause()
                           }
                           .cornerRadius(10)
                           .padding()
                       VStack(){
                           HStack(spacing:0){
                             
                           }
                           .padding(.horizontal, 24)
                           .padding(.bottom,380)
                           VStack(){
                              
                               Text("00:31")
                                 .font(
                                   Font.custom("SF Pro Text", size: 14)
                                     .weight(.light)
                                 )
                                 .kerning(0.5)
                                 .foregroundColor(.white.opacity(0.5))
                                 .padding(.vertical,2)
                           }
                           Divider()
                               .background(Color.white)
                               .padding(.bottom,12)
                           HStack(spacing:6){
                               ZStack{
                                   Rectangle()
                                       .foregroundColor(Color(hex:"#2BC1E6"))
                                       .frame(width: 83,height: 32)
                                       .cornerRadius(26)
                                   Text("TRT World")
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
                           }.padding(.horizontal,24)
                               .padding(.bottom)
                              
                       }
                       .padding()
                       
                   }
                   VStack() {
                       VStack(alignment:.leading){
                           HStack(spacing:0){
                               Text("OPINION")
                                 .font(
                                   Font.custom("Arial-BoldMT", size: 12)
                                 )
                                 .foregroundColor(Color(hex:"#007BA7"))
                                   .frame(maxWidth: .infinity, alignment: .leading)
                               Image("threeDots")
                                   .resizable()
                                   .frame(width: 24,height: 24)
                           }.padding(.horizontal)
                               .padding(.top)
                           HStack{
                               Image("avatar")
                                   .resizable()
                                   .cornerRadius(46)
                                   .frame(width: 46,height: 46)
                               Text("Dr Sami A Al-Arian")
                                 .font(
                                   Font.custom("Arial-BoldMT", size: 14)
                                    .bold()
                                 )
                                 .foregroundColor(.black)
                               
                           }.padding()
                           Text("I'm witnessing Israel's military offensive in Gaza, a harsh reality of a settler-colonial agenda to displace Palestinians for global Jewish resettlement. It's heartbreaking.")
                             .font(Font.custom("SF Pro Display", size: 16))
                             .foregroundColor(Color(red: 0.41, green: 0.41, blue: 0.41))
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
               .padding()

               }

           }.background(Color(hex:"#EFEFF4"))
       }
   }
#Preview {
    News()
    
}
extension Color {
    init(hex: String) {
        var cleanHexCode = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        cleanHexCode = cleanHexCode.replacingOccurrences(of: "#", with: "")
        print(cleanHexCode)
        var rgb: UInt64 = 0
        
        Scanner(string: cleanHexCode).scanHexInt64(&rgb)
        
        let redValue = Double((rgb >> 16) & 0xFF) / 255.0
        let greenValue = Double((rgb >> 8) & 0xFF) / 255.0
        let blueValue = Double(rgb & 0xFF) / 255.0
        self.init(red: redValue, green: greenValue, blue: blueValue)
    }
}

