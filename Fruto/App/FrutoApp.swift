//
//  FrutoApp.swift
//  Fruto
//
//  Created by Muhammad Ahmad on 23/09/2022.
//

import SwiftUI

@main
struct FrutoApp: App {
    @AppStorage("onbaording") var isonboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isonboarding{
                OnBoardingView()
            }
            else {
                ContentView()
            }
        }
    }
}
