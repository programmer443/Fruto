//
//  OnBoardingView.swift
//  Fruto
//
//  Created by Muhammad Ahmad on 23/09/2022.
//

import SwiftUI

struct OnBoardingView: View {
    var fruits: [FruitModel] = fruitsData
    var body: some View {
        TabView{
            ForEach(fruits[0...4]){ fruit in
               FruitCardView(fruit: fruit)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
