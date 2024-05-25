//
//  SeemoreView.swift
//  ZomatoAppS
//
//  Created by APPLE AHEAD on 25/05/24.
//

import SwiftUI

struct FoodListView: View {
    var body: some View {
        VStack {
            Image("food")
                .clipShape(Circle())
        }
//        .frame(idealHeight: 250)
//        .background {
//            Color.white
//        }
        .cornerRadius(10)
        .foregroundStyle(.black)
        .padding()
        .shadow(radius: 5)
        .background(.white)
        
    }
}

#Preview {
    FoodListView()
}
