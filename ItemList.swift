//
//  ItemList.swift
//  firstTask
//
//  Created by Данил Менделев on 04.09.2022.
//

import Foundation

final class ItemList: ObservableObject {
    var items:[Item] = [
        Item(name: "first", login: "VK", password: "password"),
        Item(name: "second", login: "Twitter", password: "pa$$word"),
        Item(name: "third", login: "Instagram", password: "PassW0rd"),
        Item(name: "fourth", login: "LinkedIn", password: "Pa$sw0rd")
    ]
    
    func printItem(){
        for item in items{
            print(item)
        }
    }
    
    
    
}
