//
//  ButtonStyle.swift
//  LAN
//
//  Created by Rand AlMuhanna on 24/10/1444 AH.
//

import SwiftUI

struct ButtonStyle: View {
    
    let buttonText : String
    
    var body: some View {
        
        VStack {
            Button {
                        print("Sign In")
                    } label: {
                        Text("تسجيل دخول")
                            .font(.system(size: 20))
                            .frame(width: 190 , height: 44)
                            .foregroundColor(.white)
                            .background(Color("PrimaryColor"))
                            .cornerRadius(10)
                }
        }
    }
}

struct ButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyle(buttonText: "تسجيل دخول")
    }
}
