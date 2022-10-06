//
//  FruitHeaderView.swift
//  Fruto
//
//  Created by Muhammad Ahmad on 23/09/2022.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit: FruitModel
    @State private var isAnimated: Bool = false
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
            
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 8, y: 6)
                .padding(.vertical, 20)
                .scaleEffect(isAnimated ? 1.0 : 0.6)
        }
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimated = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
    }
}
