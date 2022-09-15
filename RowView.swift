//
//  RowView.swift
//  firstTask
//
//  Created by Данил Менделев on 04.09.2022.
//

import SwiftUI

struct RowView: View {
    
    @Binding var item:Item
    
    var body: some View {
        HStack{
            Text(item.name)
            Spacer()
            Text(item.login)
            Spacer()
            Text(item.password)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(item: .constant(Item(name: "item", login: "login", password: "password")))
    }
}
