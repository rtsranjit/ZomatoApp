//
//  ContentView.swift
//  ZomatoAppS
//
//  Created by APPLE AHEAD on 25/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                    NavigationLink(destination: MainTabView().navigationBarBackButtonHidden(true)) {
                        Text("Skip")
                            .tint(.white)
                            .padding()
                            .background {
                                Color.black.opacity(0.4)
                            }
                            .frame(height: 30)
                            .cornerRadius(20)
                    }
                }
                
                Spacer()
                
                VStack {
                    TextField("Enter your number",
                              text: $username
                    )
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.white)
                    .multilineTextAlignment(.center)
                    .cornerRadius(10)
                    
                    NavigationLink(destination: OTPView()) {
                        Label("Send OTP", systemImage: "envelope.fill")
                         .tint(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.black)
                        .cornerRadius(10)
                    }
                }
                .padding()
                
                VStack {
                    HStack {
                        Rectangle()
                            .foregroundColor(Color(hex: "#C4C4C4"))
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                        Text("OR").foregroundColor(Color(hex: "#E5E5E5"))
                        Rectangle()
                            .foregroundColor(Color(hex: "#C4C4C4"))
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                    }
                }
                .padding()
                
//                Spacer()
                
                VStack {
                    Button(action: signIn) {
                        Label("Continue with Email", systemImage: "envelope.fill").tint(.black)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
                    HStack {
                        Button(action: signIn) {
                            Label("Facebook", systemImage: "envelope.fill").tint(.black)
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.white)
                        .cornerRadius(10)
                        Button(action: signIn) {
                            Label("Google", systemImage: "envelope.fill").tint(.black)
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.white)
                        .cornerRadius(10)
                    }
                }.padding()
                
                VStack {
                    Text("By continuing, you agree to our")
                        .foregroundColor(.white)
                    HStack {
                        Button(action: signIn) {
                            Text("Terms of Service").tint(.white)
                                .underline()
                        }
                        Button(action: signIn) {
                            Text("Privacy Policy").tint(.white)
                                .underline()
                        }
                        Button(action: signIn) {
                            Text("Content Policy").tint(.white)
                                .underline()
                        }
                    }
                }
                .font(.footnote)
            }
            .ignoresSafeArea(.all)
            .padding()
//            .background()
            .background(
                LinearGradient(gradient: Gradient(colors: [Color(hex: "#CB202D"), Color(hex: "#EC0C92")]), startPoint: .leading, endPoint: .trailing)
            )
        }
    }
    
    func signIn() {
        
    }
}

#Preview {
    ContentView()
}
