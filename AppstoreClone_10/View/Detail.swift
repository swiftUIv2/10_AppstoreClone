//
//  Detail.swift
//  AppstoreClone_10
//
//  Created by emm on 11/01/2021.
//

import SwiftUI

struct Detail: View {
    
    // Getting Current Selected Item...
    @ObservedObject var detail: DetailViewModel
    var animation: Namespace.ID
    
    var body: some View {
        VStack {
            Image(detail.selectedItem.contentImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: detail.selectedItem.contentImage, in: animation)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2.5)
            Spacer()
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

