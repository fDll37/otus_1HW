//
//  ContentView.swift
//  firstTask
//
//  Created by Данил Менделев on 04.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabSelected: Int = 0
    @State var isActive: Bool = false
    
    var body: some View {
        TabView(selection: $tabSelected){
            FirstScreen(tabSelected: $tabSelected, isActive: $isActive)
                .tabItem {
                    Label("First", systemImage: "list.dash")
                }
                .tag(0)
            SecondScreen(isActive: $isActive)
                .tabItem{
                    Label("Second", systemImage: "person.fill")
                }
                .tag(1)
            ThirdScreen()
                .tabItem{
                    Label("Third", systemImage: "square.and.pencil")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
