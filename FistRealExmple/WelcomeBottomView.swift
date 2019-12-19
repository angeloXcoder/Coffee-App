//
//  WelcomeBottomView.swift
//  FistRealExmple
//
//  Created by Eng Angelo E Saber on 12/18/19.
//  Copyright © 2019 Eng Angelo E Saber. All rights reserved.
//

import SwiftUI

struct WelcomeBottomView: View {
    var body: some View {
        VStack (alignment:.leading){
            HStack {
                VStack(alignment: .leading){
                    Text("Choose Your Cafe :")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                    Text("Start with Your Location ")
                        .font(.subheadline)
                        .fontWeight(.light)
                        .foregroundColor(.black)
                }  .padding(.leading,10)
               
                Spacer()
                Button(action:{
                    print("Test")
                }) {
                    ZStack {
                        Capsule()
                            .foregroundColor(.pink)
                            .frame(width: 120.0, height: 50.0)
                        Text("Start")
                            
                            .foregroundColor(.white)
                            .bold().fontWeight(.bold)
                            .font(.body)
                    }
                }
                Spacer()
            }
           
            WelcomeBottomButtonsView()
            
            
        }
        .edgesIgnoringSafeArea(.bottom)
        .frame(width: UIScreen.main.bounds.width, height: 240)
        .background(Color.white)
        .cornerRadius(18.0)
      
  
        
    }
}

struct WelcomeBottomView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeBottomView()
    }
}
