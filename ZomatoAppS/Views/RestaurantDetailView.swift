//
//  RestaurantDetailView.swift
//  ZomatoAppS
//
//  Created by APPLE AHEAD on 25/05/24.
//

import SwiftUI

struct RestaurantDetailView: View {
    
    @State private var favoriteColor = 0
    
    var body: some View {
        ScrollView {
            HStack {
                VStack {
                    Text("Eat Healthy")
                        .multilineTextAlignment(.leading)
                    Text("Healthy food, South Indian")
                        .multilineTextAlignment(.leading)
                    Text("Kukatpally, Hyderabad")
                        .multilineTextAlignment(.leading)
                }.frame(alignment: .leading)
                Spacer()
                VStack {
                    Label("4.3", systemImage: "star")
                        .foregroundColor(.white)
                        .padding(20)
                        .background(content: {
                            Color.init(hex: "#2B7D0F")
                                .cornerRadius(5, corners: [.topLeft, .bottomLeft])
                        })
                    Text("6 Photos")
                        .foregroundColor(.white)
                        .padding(20)
                        .background(content: {
                            Color.init(hex: "#2B7D0F")
                                .cornerRadius(5, corners: [.topLeft, .bottomLeft])
                        })
                        .lineLimit(2)
                }.frame(width: 100)
            }
            
            Picker("What is your favorite color?", selection: $favoriteColor) {
                Text("DELIVERY").tag(0)
                Text("DINING").tag(1)
                Text("REVIEWS").tag(2)
            }
            .padding()
            .pickerStyle(.palette)
            
        }
        
    }
}

#Preview {
    RestaurantDetailView()
}
