//
//  CreateNewItem.swift
//  firstTask
//
//  Created by Данил Менделев on 04.09.2022.
//

import SwiftUI

struct CreateNewItem: View {
    @State var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            Toggle("Animating", isOn: $isAnimating)
            ActivityIndicator(isAnimated: isAnimating)
        }
        .padding()
    }
}

struct CreateNewItem_Previews: PreviewProvider {
    static var previews: some View {
        CreateNewItem()
    }
}



struct ActivityIndicator: UIViewRepresentable {
    typealias Context = UIViewRepresentableContext<Self>
    typealias UIViewType = UIActivityIndicatorView
    
    let isAnimated: Bool
    
    public func makeUIView(context: Context) -> UIViewType {
        UIActivityIndicatorView(style: .medium) // create the instance of the view
    }
    
    public func updateUIView(_ uiView: UIViewType, context: Context) {
        // Check if isAnimated is true, and if the view is inactive.
        if isAnimated && !uiView.isAnimating {
            uiView.startAnimating() // Animate
        }
        
        // Check if isAnimated is false, and if the view is active.
        if !isAnimated && uiView.isAnimating {
            uiView.stopAnimating() // Stop animating
        }
    }
}

