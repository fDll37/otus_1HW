//
//  DetailView.swift
//  firstTask
//
//  Created by Данил Менделев on 04.09.2022.
//

import SwiftUI

struct DetailView: View {
    @Binding var item:Item
    
    var body: some View {
        Text("item id = \(item.id)")
        Text("item name = \(item.name)")
        Text("item login = \(item.login)")
        Text("item password = \(item.password)")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: .constant(Item(name: "name", login: "Login", password: "pass")))
    }
}
