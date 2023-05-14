//
//  InputTextField.swift
//  LAN
//
//  Created by Rand AlMuhanna on 24/10/1444 AH.
//

import SwiftUI

// Reusable custom TextField
struct InputTextField: View {
    
    let icon : String
    let placeholder : String
    @Binding var inputText : String
    
    var body: some View {
        VStack{
            
            HStack{
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20 , height: 20)
                   
                
                TextField(placeholder , text: $inputText)
                    .padding()
                
            }.padding(.horizontal)
            .background(Color("BackGroundOfTextField"))
            .frame(width: 300 , height: 44)
            .cornerRadius(7)
            .foregroundColor(Color("SecondaryColor"))

        }
    }
}

struct InputTextField_Previews: PreviewProvider {
    static var previews: some View {
        InputTextField(icon: "envelope", placeholder: "البريد الإلكتروني", inputText: .constant(""))
    }
}
