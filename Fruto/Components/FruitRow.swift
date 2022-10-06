//
//  FruitRow.swift
//  Fruto
//
//  Created by Muhammad Ahmad on 23/09/2022.
//

import SwiftUI

struct FruitRow: View {
    var fruits: FruitModel
    var body: some View {
        HStack {
            Image(fruits.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruits.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5){
                Text(fruits.title)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text(fruits.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }            
        }
    }
}

struct FruitRow_Previews: PreviewProvider {
    static var previews: some View {
        FruitRow(fruits: fruitsData[0])
    }
}
