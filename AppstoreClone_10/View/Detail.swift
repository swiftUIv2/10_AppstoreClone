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
    
    @State var scale: CGFloat = 1
    
    var body: some View {
        ScrollView {
        VStack {
            ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
                Image(detail.selectedItem.contentImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .matchedGeometryEffect(id: detail.selectedItem.contentImage, in: animation)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2.5)
                HStack {
                    Text(detail.selectedItem.overlay)
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        
                        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.8)) {
                            
                            detail.show.toggle()
                            
                        }
                    }) {
                        Image(systemName: "xmark")
                            .foregroundColor(Color.primary.opacity(0.7))
                            .padding()
                            .background(Color.primary.opacity(0.2))
                            .clipShape(Circle())
                    }
                }
                .padding(.horizontal)
                
                // since we ignore top area....
                .padding(.top, UIApplication.shared.windows.first!.safeAreaInsets .top + 10)
            }
            // Gesture for closing Detail View...
            .gesture(DragGesture(minimumDistance: 0).onChanged(onChanged(value:)).onEnded(onEnded(value:)))
                        
            
            
            HStack {
                Image(detail.selectedItem.logo)
                    .resizable()
                    
                    .clipShape(Rectangle())
                    .cornerRadius(12)
                    .frame(width: 70, height: 70)
                    
                
                VStack(alignment: .leading, spacing: 6) {
                    Text(detail.selectedItem.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Text(detail.selectedItem.category)
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
            .matchedGeometryEffect(id: detail.selectedItem.id, in: animation)
            .padding()
            
            Text("""
 Pokémon sword & shield has evolved! Discover a whole new adventure on IOS for the special 25th anniversary!

    BATTLE AGAINST CHAMPIONS!

 Enter the new Champion Stadium, and battle the Elite Four and regional Champion! Rise to the top with your sync pairs, and earn a spot in the Hall of Fame!

    HATCH EGGS & TEAM UP!

 Hatch Eggs to get new Pokémon! Add hatched Pokémon to your team, and battle your way to the top!
 BUILD THE ULTIMATE TEAM FOR 3-ON-3 BATTLE!
 Assemble Trainers and Pokémon to take on battles! Create a team all your own, and aim for victory!


                TRAINERS FROM THE PAST COME TOGETHER!

                Champions, Elite Four members, and Gym Leaders from the past have come together! Team up with Trainers and their Pokémon, and go on adventures!


                NEW STORIES WITH YOUR FAVORITE CHARACTERS

                In Pokémon Masters EX, experience an original story that crosses generations—along with familiar Trainers!



                ・iOS 11 or higher / 64 bit

                Note:

                ・We recommend a device with at least 2GB of RAM.

                ・We do not guarantee functionality on all devices listed above.

                ・There may be cases where the app does not function properly due to your device’s capabilities, specifications, or particular conditions for using apps.

                ・It may take time to become compatible with the latest OS.
 """)
                .padding()
            Button(action: {}) {
                Label(title: {
                    Text("Share")
                        .foregroundColor(.primary)
                }) {
                   
                    Image(systemName: "square.and.arrow.up.fill")
                        .font(.title2)
                        .foregroundColor(.primary)
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 25)
                .background(Color.primary.opacity(0.1))
                .cornerRadius(10)
            }
            .padding()
        }
        .scaleEffect(scale)
        .ignoresSafeArea(.all, edges: .top)
    }
    }
    
    func onChanged(value: DragGesture.Value) {
        // calculating scale value by total height...
        let scale = value.translation.height / UIScreen.main.bounds.height
        
        // if scale is 0.1 means the actual scale will be 1- 0.1 => 0.9
        // limiting scale value...
        if 1 - scale > 0.7 {
            
        self.scale =  1 - scale
        }
    }
    
    func onEnded(value: DragGesture.Value) {
        withAnimation(.spring()) {
            
            //closing detail view when scale is less than 0.9...
            if scale < 0.9 {
                detail.show.toggle()
            }
            scale = 1
        }
    }
}

