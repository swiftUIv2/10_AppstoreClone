//
//  Today.swift
//  AppstoreClone_10
//
//  Created by emm on 11/01/2021.
//

import SwiftUI

struct Today: View {
    var animation: Namespace.ID
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                HStack(alignment: .bottom){
                    VStack(alignment: .leading, spacing: 5) {
                        Text("wednesday 23 december")
                            .foregroundColor(.secondary)
                        Text("Today")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "person.circle")
                            .font(.largeTitle)
                    }
                }
                .padding()
                
                ForEach(items){item in
                    
                    //CardView...
                    TodayCardView(item: item, animation: animation)
                }
            }
            .padding(.bottom)
        }
        .background(Color.primary.opacity(0.06).ignoresSafeArea())
    }
}

// Hero Animation...


