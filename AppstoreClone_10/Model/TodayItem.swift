//
//  TodayItem.swift
//  AppstoreClone_10
//
//  Created by emm on 11/01/2021.
//

import SwiftUI

struct TodayItem: Identifiable {
    var id = UUID().uuidString
    var title: String
    var category: String
    var overlay: String
    var contentImage: String
    var logo: String
}

var items = [
    TodayItem(title: "Zelda Breath to the wild", category: "Adventure game", overlay: "Game of the year 2020", contentImage: "a2", logo: "a1"),
    TodayItem(title: "CyberPunk 2077", category: "role game", overlay: "Crap of the year 2020", contentImage: "b1", logo: "b2")
]

