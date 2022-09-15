//
//  ThirdScreen.swift
//  firstTask
//
//  Created by Данил Менделев on 04.09.2022.
//

import SwiftUI

struct ThirdScreen: View {
    
    @State private var activeModalView = false
    
    var body: some View {
        Button {
            activeModalView = true
        } label: {
            Text("Open modal window")
        }
        .sheet(isPresented: $activeModalView) {
            CreateNewItem()
        }
    }
}

struct ThirdScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThirdScreen()
    }
}
