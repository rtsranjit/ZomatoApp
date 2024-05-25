//
//  TabView.swift
//  ZomatoAppS
//
//  Created by APPLE AHEAD on 25/05/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        VStack {
            
        }
        TabView {
            HomeView()
                .badge(0)
                .tabItem {
                    Label("", systemImage: "tray.and.arrow.down.fill")
                }
            OTPView()
                .badge(1)
                .tabItem {
                    Label("", systemImage: "tray.and.arrow.up.fill")
                }
            OTPView()
                .badge(2)
                .tabItem {
                    Label("", systemImage: "person.crop.circle.fill")
                }
            OTPView()
                .badge(3)
                .tabItem {
                    Label("", systemImage: "person.crop.circle.fill")
                }
        }
    }
}

#Preview {
    MainTabView()
}
