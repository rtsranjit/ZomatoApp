//
//  CardView.swift
//  ZomatoAppS
//
//  Created by APPLE AHEAD on 25/05/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack {
            Image("food")
            HStack {
                VStack(alignment: .leading) {
                    Text("Eat Healthy")
                    Text("Healthy food")
                    Label("Zomato funds environmental projects to offset delivery carbon footprint ", systemImage: "leaf.fill")
                        .font(.caption2)
                }
                Spacer()
                VStack {
                    Label("4.3", systemImage: "star")
                        .foregroundColor(.white)
                        .padding(5)
                        .background(content: {
                            Color.init(hex: "#2B7D0F")
                                .cornerRadius(5)
                        })
                    Text("300 for one")
                }
            }
            .padding()
        }
//        .frame(idealHeight: 250)
        .background {
            Color.white
        }
        .cornerRadius(10)
        .foregroundStyle(.black)
        .padding()
        .shadow(radius: 5)
//        .border(.red, width: 4)
        .background(.white)
        
    }
}

#Preview {
    CardView()
}
