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
                    .environmentObject(detailObject)
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
            
            //hiding tabBar when detail page opens...
            .opacity(detailObject.show ? 0 : 1)
            
            if detailObject.show {
                
                Detail(detail: detailObject, animation: animation)
            }
        }
    }
}



