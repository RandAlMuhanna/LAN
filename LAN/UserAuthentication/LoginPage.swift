//
//  LoginPage.swift
//  LAN
//
//  Created by Rand AlMuhanna on 24/10/1444 AH.
//

import SwiftUI

struct LoginPage: View {
    
    @State var email = ""
    @State var password = ""

    var body: some View {
        
        VStack(spacing:40){
            
            
            VStack{
                Text("! مرحباً بعودتك ")

             InputTextField(icon: "envelope", placeholder: "البريد الإلكتروني", inputText: $email)
                
                InputTextField(icon: "lock", placeholder: "كلمة السر", inputText: $email)
            }
         
            .padding(.top,30)
            
            VStack {
                ButtonStyle(buttonText: "تسجيل دخول")
                
                NavigationLink {
                    SignupPage()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack{
                        
                        Text("ليس لديك حساب ؟")
                            .foregroundColor(Color("SecondaryColor"))
                        
                        Text("سجل الآن")
                            .foregroundColor(Color("PrimaryColor"))
                        
                    }.font(.system(size: 15))
                }
            }
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
