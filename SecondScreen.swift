//
//  SecondScreen.swift
//  firstTask
//
//  Created by Данил Менделев on 04.09.2022.
//

import SwiftUI

struct SecondScreen: View {
    
    @ObservedObject var itemList = ItemList()
    @Binding var isActive: Bool
    
    var body: some View {
        NavigationView{
            List{
                ForEach($itemList.items){ item in
                    if item.wrappedValue.name == "second" {
                        NavigationLink(destination: DetailView(item: item), isActive: $isActive){
                            RowView(item: item)
                        }
                    } else {
                        NavigationLink(destination: DetailView(item: item)){
                            RowView(item: item)
                        }
                    }
                }
            }
        }
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen(isActive: .constant((0 != 0)))
    }
}
