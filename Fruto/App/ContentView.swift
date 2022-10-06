//
//  ContentView.swift
//  Fruto
//
//  Created by Muhammad Ahmad on 23/09/2022.
//

import SwiftUI

struct ContentView: View {
    var fruits: [FruitModel] = fruitsData
    @State private var isSettingShow: Bool = false
    
    var body: some View {
        NavigationView {
            List(fruits.shuffled()) { fruit in
                NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                    FruitRow(fruits: fruit)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing: Button(action: {
                    isSettingShow = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                    }
                )
            )
            .sheet(isPresented: $isSettingShow) {
                SettingView()
            }
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
