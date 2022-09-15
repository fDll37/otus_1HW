//
//  FirstScreen.swift
//  firstTask
//
//  Created by Данил Менделев on 04.09.2022.
//

import SwiftUI

struct FirstScreen: View {
    
    @Binding var tabSelected: Int
    @Binding var isActive: Bool
    
    var body: some View {
        Button {
            tabSelected = 1
            isActive = true
        } label: {
            Text("Move to second view")
        }
    }
}

struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen(tabSelected: .constant(0), isActive: .constant(false))
    }
}
