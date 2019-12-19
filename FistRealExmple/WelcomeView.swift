//
//  ContentView.swift
//  FistRealExmple
//
//  Created by Eng Angelo E Saber on 12/17/19.
//  Copyright © 2019 Eng Angelo E Saber. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {
    @State private var isBottomViewOnScreen = false
    @State private var isSignUpviewOnScreen = false
    @State private var isMenuViewOnScreen   = false
    
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundImageView()
                VStack {
                    MenuButtonView()
                        .offset(y: isMenuViewOnScreen ? 0: -400)
                        .animation(.spring(dampingFraction : 0.8))
                        .onAppear{
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                                self.isMenuViewOnScreen.toggle()
                            }
                    }
                    
                    Spacer()
                    WelcomeTitleView()
                    Spacer()
                    NavigationLink(destination: Text("Coming Soon.")) {
                        SignInOrCreateButtonView()
                    }
                    .offset(y: isSignUpviewOnScreen ? 0: 400)
                    .animation(.spring(dampingFraction : 0.8))
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                            self.isSignUpviewOnScreen.toggle()
                        }
                    }
                    Spacer()
                    WelcomeBottomView()
                        .offset(y: isBottomViewOnScreen ? 0: 400)
                        .animation(.spring(dampingFraction : 0.8))
                        .onAppear{
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.10) {
                                self.isBottomViewOnScreen.toggle()
                            }
                    }
                    
                }.frame(width: UIScreen.main.bounds.width)
                    .edgesIgnoringSafeArea(.bottom)
            }
            .navigationBarTitle("",displayMode: .inline)
            .navigationBarHidden(true)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
