//
//  SignInOrCreateButtonView.swift
//  FistRealExmple
//
//  Created by Eng Angelo E Saber on 12/17/19.
//  Copyright © 2019 Eng Angelo E Saber. All rights reserved.
//

import SwiftUI

struct SignInOrCreateButtonView: View {
    var body: some View {
        HStack {
            Image(systemName: "bag")
                .font(.largeTitle)
                .foregroundColor(.pink)
            VStack(alignment: .leading){
                Text("Let's Get SHIRU CAFE")
                    .foregroundColor(.pink)
                    .fontWeight(.heavy)
                Text("Sign in Or create an account")
                    .foregroundColor(.green)
                    .fontWeight(.light)
            }.padding(.horizontal)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(18)
        .padding(.horizontal,2)
    }
}

struct SignInOrCreateButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SignInOrCreateButtonView()
    }
}
