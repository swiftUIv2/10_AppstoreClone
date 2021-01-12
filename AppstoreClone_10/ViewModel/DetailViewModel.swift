//
//  DetailViewModel.swift
//  AppstoreClone_10
//
//  Created by emm on 12/01/2021.
//

import SwiftUI

class DetailViewModel: ObservableObject {
    @Published var selectedItem = TodayItem(title: "", category: "", overlay: "", contentImage: "", logo: "")
    @Published var show = false
}

