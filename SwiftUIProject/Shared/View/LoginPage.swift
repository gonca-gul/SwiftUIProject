//
//  LoginPage.swift
//  SwiftUIProject
//
//  Created by Gonca Gül on 30.01.2024.
//

import SwiftUI

struct LoginPage: View {
    @StateObject var loginData: LoginPageModel=LoginPageModel()
    var body: some View {
        VStack{
                Text("Welcome\nback")
                    .font(.custom("Arial-BoldMT", size: 45))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth:.infinity, alignment:.leading)
                    .foregroundColor(.white)
                    .padding(.horizontal,30)
                    .frame(height:getRect().height / 3.5)
                    .background(
                        ZStack{
                            LinearGradient(colors: [Color.secondary,Color("LoginCircle")
                                .opacity(0.8),Color.white], startPoint: .top, endPoint: .bottom)
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .frame(maxWidth:.infinity,maxHeight:.infinity,alignment: .topTrailing)
                            .padding(.trailing)
                            .offset(y:-15)
                            .ignoresSafeArea()
                            Circle()
                                .strokeBorder(Color.white.opacity(0.3),lineWidth:3)
                                .frame(width: 30,height: 30)
                                .blur(radius: 2)
                                .frame(maxWidth:.infinity,maxHeight:.infinity,alignment: .bottomTrailing)
                                .padding(30)
                            Circle()
                                .strokeBorder(Color.white.opacity(0.3),lineWidth:3)
                                .frame(width: 23,height: 23)
                                .blur(radius: 2)
                                .frame(maxWidth:.infinity,maxHeight:.infinity,alignment: .topLeading)
                                .padding(.leading)
                        }
                    )
            ScrollView(.vertical, showsIndicators:false){
                VStack(spacing:15){
                    Text("Login")
                        .font(.custom("Arial-BoldMT", size: 22).bold())
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment:.leading)
                    CustomText(icon: "envelope", title: "Email", placeholder: "gonca@gmail.com", value: $loginData.email, showPassword:.constant(false))
                        .padding(.top,25)
                    CustomText(icon: "lock", title: "Password", placeholder: "12345", value: $loginData.password, showPassword: $loginData.showPassword)
                        .padding(.top,15)
                    if loginData.registerUser {
                        CustomText(icon: "lock", title: "Re-Enter Password", placeholder: "12345", value: $loginData.re_Enter_Password, showPassword:$loginData.showRePassword)
                            .padding(.top,25)
                            
                        
                    }
                    Button {
                        loginData.ForgotPassword()
                    }
                    label: {
                        Text("Forgot Password?")
                            .font(.custom("Arial-BoldMT", size: 12))
                            .fontWeight(.semibold)
                            .foregroundColor(Color.purple)
                    }
                    .padding(.top,8)
                    .frame(maxWidth:.infinity,
                           alignment:.leading)
                    
                    Button {
                        if loginData.registerUser {
                            loginData.Register()
                        } else {
                            loginData.Login()
                        }
                    }
                    label :{
                        Text(loginData.registerUser ? "Register": "Login")
                            .font(.custom("Arial-BoldMT", size: 17))
                            .padding(.vertical, 20)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                    }
                    .background(Color.purple)  // Apply background first
                    .cornerRadius(10)         // Then apply corner radius
                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 5, y: 5)
                    .padding(.top,35)
                    
                    Button {
                        withAnimation{
                            loginData.registerUser.toggle()
                        }
                    }
                    label: {
                        Text(loginData.registerUser ? "Back to Login" : "Create Account")
                            .font(.custom("Arial-BoldMT", size: 12))
                            .fontWeight(.semibold)
                            .foregroundColor(Color.purple)
                    }
                    .padding(.top,8)
                 
                }
                .padding(30)
                
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(Color.white
                .clipShape(CustomCorners(corners: [.topLeft,.topRight], radius:25))
                .ignoresSafeArea()
            )
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color.purple)
        .onChange(of: loginData.registerUser){
             newValue in
            loginData.email=""
            loginData.password=""
            loginData.showRePassword=false
            loginData.re_Enter_Password=""
            loginData.showRePassword=false
        }
    }
    @ViewBuilder
    func CustomText(icon:String,title:String,placeholder:String,value:Binding<String>,showPassword:Binding<Bool>)->some View{
        VStack(alignment:.leading,spacing:12){
            Label{
                Text(title)
                    .font(.custom("Arial-BoldMT", size: 14))
            }icon:{
                Image(systemName: icon)
            }
            .foregroundColor(Color.black.opacity(0.8))
            if title.contains("Password") && !showPassword.wrappedValue {
                SecureField(placeholder, text: value)
                    .padding(.top,8)
            }else{
                TextField(placeholder, text: value)
                    .padding(.top,8)
            }
            
            Divider()
                .background(Color.black.opacity(0.4))
        }
        .overlay(
            Group{
                if title.contains("Password"){
                    Button(action: {showPassword.wrappedValue.toggle()}, label: {
                        Text(showPassword.wrappedValue ? "Hide": "Show")
                            .font(.custom("Arial-BoldMT", size: 12))
                            .foregroundStyle(Color.purple)
                    })
                    .offset( y:15)

                }
                
            }
            ,alignment: .trailing
        )
    }
}

#Preview {
    LoginPage()
}
