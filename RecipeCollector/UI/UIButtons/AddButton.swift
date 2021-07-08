//
//  AddButton.swift
//  RecipeCollector
//
//  Created by Denis Seifert on 07.07.21.
//

import SwiftUI

struct AddButton: View {
    
    var size: CGFloat
    
    var body: some View {
        ZStack{
            Image(systemName: "plus.circle")
                .resizable()
                .scaledToFit()
                .foregroundColor(.black)
                .frame(width: size, height: size)
            Image(systemName: "plus.circle.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(.green)
                .frame(width: size, height: size)
        }
    }
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton(size: 50)
    }
}
