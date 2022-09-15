//
//  Item.swift
//  firstTask
//
//  Created by Данил Менделев on 04.09.2022.
//

import Foundation

struct Item: Identifiable {
    var id = UUID()
    var name: String
    var login: String
    var password: String
}
