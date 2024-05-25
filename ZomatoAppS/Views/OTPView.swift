//
//  OTPView.swift
//  ZomatoAppS
//
//  Created by APPLE AHEAD on 25/05/24.
//

import SwiftUI

struct OTPView: View {
    
    @State private var firstTextfield: String = ""
    
    var body: some View {
        VStack {
            Text("We have sent a verification code to")
            VStack {
                Label("+91-9010858965", systemImage: "")
                HStack {
                    Spacer()
                    TextField("",
                              text: $firstTextfield
                    )
                    .border(.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    TextField("",
                              text: $firstTextfield
                    )
                    .border(.gray, width: 1)
                    TextField("",
                              text: $firstTextfield
                    )
                    .border(.gray, width: 1)
                    TextField("",
                              text: $firstTextfield
                    )
                    .border(.gray, width: 1)
                    TextField("",
                              text: $firstTextfield
                    )
                    .border(.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    TextField("",
                              text: $firstTextfield
                    )
                    .border(.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    Spacer()
                }.padding(50)
            }

            Spacer()
            
            HStack {
                Label("Didn’t receive the code?", systemImage: "")
                Label("Resend now", systemImage: "")
            }
            
        }
    }
}

#Preview {
    OTPView()
}
