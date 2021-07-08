//
//  AddRecipeView.swift
//  RecipeCollector
//
//  Created by Denis Seifert on 06.07.21.
//

import SwiftUI
import LinkPresentation

struct AddRecipeView: View {
    
    @State var recipeLink: String
    
    @State var linkMetaData: LPLinkMetadata
    
    var body: some View {
        VStack{
            Text("Add a Recipe here.")
            InputField(text: $recipeLink, name: "Enter a Link")
            Button(action: {
                print("Add Recipe.")
                //linkMetaData = activityViewControllerLinkMetadata(<#UIActivityViewController#>) ?? nil
            }) {
                AddButton(size: 50)
            }
        }
    }
    
    func activityViewControllerLinkMetadata(_: UIActivityViewController) -> LPLinkMetadata? {
        let metadata = LPLinkMetadata()
        metadata.originalURL = URL(string: "https://www.example.com/apple-pie")
        metadata.url = metadata.originalURL
        metadata.title = "The Greatest Apple Pie In The World"
        metadata.imageProvider = NSItemProvider.init(contentsOf:
            Bundle.main.url(forResource: "apple-pie", withExtension: "jpg"))
        return metadata
    }
}

//struct AddRecipeView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddRecipeView()
//    }
//}
