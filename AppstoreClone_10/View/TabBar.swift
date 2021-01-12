//
//  TabBar.swift
//  AppstoreClone_10
//
//  Created by emm on 11/01/2021.
//

import SwiftUI

struct TabBar: View {
    
    @Namespace var animation
    @StateObject var detailObject = DetailViewModel()
    
    var body: some View {
        ZStack {
            TabView {
                
                Today(animation: animation)
                    .tabItem {
                        Image(systemName: "calendar")
                        Text("Today")
                    }
                
                Text("Games")
                    .tabItem {
                        Image(systemName: "flame")
                        Text("Games")
                    }
                
                Text("Apps")
                    .tabItem {
                        Image(systemName: "rectangle.on.rectangle")
                        Text("Apps")
                    }
                
                Text("Search")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
            }
            .accentColor(.orange)
            .foregroundColor(.primary)
        }
    }
}



