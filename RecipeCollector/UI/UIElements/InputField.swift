//
//  InputField.swift
//  RecipeCollector
//
//  Created by Denis Seifert on 07.07.21.
//

import SwiftUI

struct InputModifier : ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .padding()
            
            .border(Color(red: 0, green: 0, blue: 0, opacity: 0.2), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            
            .background(Color.white)
            .shadow(radius: 5)
            .cornerRadius(20)
    }
}

struct InputField : View {
    @Binding var text: String
    var name: String
    
    var body: some View {
        TextField(name, text: $text)
        /*{
            UIApplication.shared.endEditing()
        }*/
            .modifier(InputModifier())
        
    }
}

struct SecureInputField : View {
    @Binding var text: String
    var name: String
    
    var body: some View {
        SecureField(name, text: $text)
        /*{
            UIApplication.shared.endEditing()
        }*/
            .modifier(InputModifier())
        
    }
}
