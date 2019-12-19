//
//  BackgroundImageView.swift
//  FistRealExmple
//
//  Created by Eng Angelo E Saber on 12/17/19.
//  Copyright © 2019 Eng Angelo E Saber. All rights reserved.
//

import SwiftUI

struct BackgroundImageView: View {
    var body: some View {
        ZStack {
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
//            Rectangle()
//                .opacity(0.5)
//                .edgesIgnoringSafeArea(.all)
            LinearGradient(gradient: Gradient(colors: [Color.red,Color.blue]),
                           startPoint: .topLeading,
                           endPoint: .bottomLeading)
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all)
         
            
        }
    }
}

struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageView()
    }
}
