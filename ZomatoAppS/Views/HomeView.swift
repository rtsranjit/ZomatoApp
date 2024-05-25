//
//  HomeView.swift
//  ZomatoAppS
//
//  Created by APPLE AHEAD on 25/05/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var search: String = ""
    
    @State private var columns = [
        "MAX Safety",
        "MAX Safety",
        "MAX Safety",
        "MAX Safety"
    ]
    
    private let flexibleColumn = [
        
        GridItem(.flexible(minimum: 100, maximum: 200)),
        GridItem(.flexible(minimum: 100, maximum: 200)),
        GridItem(.flexible(minimum: 100, maximum: 200))
    ]
    
    let data = (1...8).map { "Item \($0)" }
    
    let showColumns = [
        GridItem(.adaptive(minimum: 80))
    ]
    
    @State private var showingSheet = false

//        var body: some View {
//            Button("Show Sheet") {
//                showingSheet.toggle()
//            }
//            .sheet(isPresented: $showingSheet) {
//                SheetView()
//            }
//        }
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    HStack(spacing: 0) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(width: 40, height: 30, alignment: .leading)
                            .padding(.leading, 8)
                        
                        TextField("Restaurant name, cuisine, or a dish...",
                                  text: $search
                        )
                        .multilineTextAlignment(.leading)
                    }
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    .padding()
                    .border(.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        // 2
                        HStack {
                            Button(action: someAction) {
                                Text("MAX Safety").tint(.black)
                            }
                            .padding(10)
                            .border(.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                            .cornerRadius(5)
                            Button(action: someAction) {
                                Text("PRO").tint(.black)
                            }
                            .padding(10)
                            .border(.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                            .cornerRadius(5)
                            Button(action: someAction) {
                                Text("Cuisines").tint(.black)
                            }
                            .padding(10)
                            .border(.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                            .cornerRadius(5)
                            Button(action: someAction) {
                                Text("Rating ").tint(.black)
                            }
                            .padding(10)
                            .border(.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                            .cornerRadius(5)
                            Button(action: someAction) {
                                Text("Popular").tint(.black)
                            }
                            .padding(10)
                            .border(.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                            .cornerRadius(5)
                        }
                        .padding(20)
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        // 2
                        HStack {
                            FoodListView()
                                .frame(width: 180, height: 125)
                                .cornerRadius(5)
                                .clipped()
                            
                            FoodListView()
                                .frame(width: 180, height: 125)
                                .cornerRadius(5)
                                .clipped()
                            
                            FoodListView()
                                .frame(width: 180, height: 125)
                                .cornerRadius(5)
                                .clipped()
                            
                            FoodListView()
                                .frame(width: 180, height: 125)
                                .cornerRadius(5)
                                .clipped()
                            
                            FoodListView()
                                .frame(width: 180, height: 125)
                                .cornerRadius(5)
                                .clipped()
                        }
                        .padding(20)
                    }
                    
                    Section {
                        ScrollView {
                            LazyVGrid(columns: showColumns, spacing: 20) {
                                ForEach(data, id: \.self) { item in
                                    NavigationLink(destination:  RestaurantDetailView()) {
                                        FoodListView()
                                            .frame(width: 77, height: 77)
                                            .clipShape(Circle())
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                        .frame(maxHeight: 300)
                    } header: {
                        HStack {
                            Text("Eat what makes you happy")
                                .font(.title2)
                                .bold()
                                .tint(.black)
                                .padding()
                            Spacer()
                        }
                    }
                    
                    Button(action: someAction) {
                        Text("See more").tint(.black)
                        Image(systemName: "chevron.down")
                    }
//                    .sheet(isPresented: $showingSheet) {
//                        OTPView()
//                    }
                    .tint(.black)
                    .frame(maxWidth: .infinity)
                    .frame(height: 30)
                    .border(.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .cornerRadius(5)
                    .padding()
                    
                    Section {
//                        VStack {
                            ForEach($columns, id: \.self) { value in
                                NavigationLink(destination: OTPView()) {
                                    CardView()
                                        .frame(height: 400)
                                }
                            }
//                        }
                    } header: {
                        HStack {
                            Text("396 restaurants around you")
                                .font(.title2)
                                .bold()
                                .tint(.black)
                                .padding()
                            Spacer()
                        }
                    }
                }
                .padding(.top, -40)
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                    }
                }
                ToolbarItem(placement: .principal) {
                    HStack {
                        Text("---------------------------").font(.headline)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    HStack {
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
            
        }
        

    }
    
    func someAction() {
        
    }
}

#Preview {
    HomeView()
}
