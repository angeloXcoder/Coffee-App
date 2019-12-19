//
//  WelcomeBottomButtonsView.swift
//  FistRealExmple
//
//  Created by Eng Angelo E Saber on 12/18/19.
//  Copyright © 2019 Eng Angelo E Saber. All rights reserved.
//

import SwiftUI

struct WelcomeBottomButtonsView: View {
    let buttons = [ButtonWithImages(image: "clock", label: "History"),ButtonWithImages(image: "bag", label: "Menu")]
    var body: some View {
        GeometryReader {
            geometry in
            HStack {
                ForEach(self.buttons,id:\.self) { button in
                    Button(action:{
                    }) {
                        Image(systemName: button.image)
                            .font(.title)
                            .foregroundColor(.pink)
                        Text(button.label)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                    }
                    .frame(width: geometry.size.width / 2.2 , height: 60.0 )
                    .background(Color.white)
                    .cornerRadius(15.0)
                    .shadow(color: Color(.black).opacity(0.5),radius: 4,x:0,y:0)
                    .padding(.horizontal)
                }
            }
            
        }
        .frame(height: 60.0)
        .padding()
    }
}

struct WelcomeBottomButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeBottomButtonsView()
    }
}

struct ButtonWithImages : Hashable {
    let image : String
    let label : String
}
