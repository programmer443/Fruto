//
//  FruitCardView.swift
//  Fruto
//
//  Created by Muhammad Ahmad on 23/09/2022.
//

import SwiftUI

struct FruitCardView: View {
    var fruit: FruitModel
    @State private var isAnimated: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 20){
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimated ? 1.0 : 0.6)
                
                Text(fruit.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)

                Text(fruit.headline)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                StartButton()
            }
            .foregroundColor(Color.white)
        }
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimated = true
            }
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
//            .preferredColorScheme(.dark)
            .frame(width: 380, height: 640)
    }
}
