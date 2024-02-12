//
//  LoginPageModel.swift
//  SwiftUIProject
//
//  Created by Gonca Gül on 30.01.2024.
//

import SwiftUI

class LoginPageModel: ObservableObject {
    @Published  var email: String=""
    @Published  var password: String=""
    @Published  var showPassword: Bool=false
    @Published  var registerUser: Bool=false
    @Published  var re_Enter_Password: String=""
    @Published  var showRePassword: Bool=false
    
    
    func Login(){
        
    }
    func Register() {
        
    }
    func ForgotPassword() {
        
    }

}


