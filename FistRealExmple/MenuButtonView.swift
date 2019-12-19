//
//  MenuButtonView.swift
//  FistRealExmple
//
//  Created by Eng Angelo E Saber on 12/17/19.
//  Copyright © 2019 Eng Angelo E Saber. All rights reserved.
//

import SwiftUI

struct MenuButtonView: View {
    var body: some View {
        HStack {
            Button (action: {
                print("Menu Button Taped")
                
            },label: {
                Image(systemName: "line.horizontal.3.decrease.circle.fill")
                    .font(.system(size:44))
                    .foregroundColor(.white)
            })
            Spacer()
        }.padding()
    }
}

struct MenuButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MenuButtonView()
            .background(Color.black)
        
    }
}
