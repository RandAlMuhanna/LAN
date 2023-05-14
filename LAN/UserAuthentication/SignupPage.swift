//
//  SignupPage.swift
//  LAN
//
//  Created by Rand AlMuhanna on 24/10/1444 AH.
//

import SwiftUI

struct SignupPage: View {
    
    @State private var name = ""
    @State private var email = ""
    @State private var phoneNumber = ""
    @State private var password = ""

    
    var body: some View {
        
        VStack(spacing:34) {
            
            VStack{
                
                Text("تسجيل حساب جديد")
                
               InputTextField(icon: "person", placeholder: "الاسم", inputText: $name)
                
                InputTextField(icon: "envelope", placeholder: "البريد الإلكتروني", inputText: $email)
                
                InputTextField(icon: "phone", placeholder: "رقم الجوال", inputText: $phoneNumber)
                
                InputTextField(icon: "lock", placeholder: "كلمة السر", inputText: $password)
                
            }
            
            VStack{
                ButtonStyle(buttonText: "تسجيل")
                
                NavigationLink {
                    LoginPage()
                        .navigationBarBackButtonHidden(true)
                    
                } label: {
                    
                    HStack{
                        Text("لديك حساب ؟")
                            .foregroundColor(Color("SecondaryColor"))
                        
                        Text("سجل دخولك الآن")
                            .foregroundColor(Color("PrimaryColor"))

                        
                    } .font(.system(size: 15))

                }

                
            }
        }
    }
}

struct SignupPage_Previews: PreviewProvider {
    static var previews: some View {
        SignupPage()
    }
}
