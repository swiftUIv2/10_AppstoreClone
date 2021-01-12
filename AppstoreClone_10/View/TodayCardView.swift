//
//  TodayCardView.swift
//  AppstoreClone_10
//
//  Created by emm on 11/01/2021.
//

import SwiftUI

struct TodayCardView: View {
    var item: TodayItem
    
    // getting current scheme color
    @Environment(\.colorScheme) var color
    var animation: Namespace.ID
    
    var body: some View {
        
        VStack {
            
            Image(item.contentImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: item.contentImage, in: animation)
                .frame(width: UIScreen.main.bounds.width - 30, height: 250)
            
            HStack {
                Image(item.logo)
                    .resizable()
                    
                    .clipShape(Rectangle())
                    .cornerRadius(12)
                    .frame(width: 70, height: 70)
                    
                
                VStack(alignment: .leading, spacing: 6) {
                    Text(item.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Text(item.category)
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                Spacer(minLength: 0)
                
                VStack {
                    Button(action: {}) {
                        Text("GET")
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 25)
                            .background(Color.primary.opacity(0.1))
                            .clipShape(Capsule())
                    }
                    
                    Text("In App Purchases")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .matchedGeometryEffect(id: item.id, in: animation)
            .padding()
        }
        .background(color == .dark ? Color.black : Color.white)
        .cornerRadius(15)
        .padding(.horizontal)
        .padding(.top)
    }
}

