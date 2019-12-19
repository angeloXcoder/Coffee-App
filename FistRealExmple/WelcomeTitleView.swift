//
//  WelcomeTitleView.swift
//  FistRealExmple
//
//  Created by Eng Angelo E Saber on 12/17/19.
//  Copyright © 2019 Eng Angelo E Saber. All rights reserved.
//

import SwiftUI

struct WelcomeTitleView: View {
    var body: some View {
      VStack {
           Text("Welcome to SHIRU CAFE")
               .font(.title)
               .fontWeight(.heavy)
               .foregroundColor(.white)
               .multilineTextAlignment(.center)
           Text("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour")
               .font(.subheadline)
               .foregroundColor(.white)
               .multilineTextAlignment(.center)
       }
    }
}

struct WelcomeTitleView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeTitleView().background(Color.red)
    }
}
