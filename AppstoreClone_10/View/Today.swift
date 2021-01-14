//
//  Today.swift
//  AppstoreClone_10
//
//  Created by emm on 11/01/2021.
//

import SwiftUI

struct Today: View {
    var animation: Namespace.ID
    @EnvironmentObject var detail: DetailViewModel
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                HStack(alignment: .bottom){
                    VStack(alignment: .leading, spacing: 5) {
                        Text("THURSDAY 14 JANUARY")
                            .foregroundColor(.secondary)
                        Text("Today")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    Spacer()
                    Button(action: {}) {
                        Image("al")
                            .resizable()
                            .frame(width: 35, height: 35)
                    }
                }
                .padding()
                
                ForEach(items){item in
                    
                    //CardView...
                    TodayCardView(item: item, animation: animation)
                        .onTapGesture {
                            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.8)) {
                                detail.selectedItem = item
                                detail.show.toggle()
                            }
                        }
                }
            }
            .padding(.bottom)
        }
        .background(Color.primary.opacity(0.06).ignoresSafeArea())
    }
}

// Hero Animation...


