//
//  StartButton.swift
//  Fruto
//
//  Created by Muhammad Ahmad on 23/09/2022.
//

import SwiftUI

struct StartButton: View {
    @AppStorage("onbaording") var isonboarding: Bool?
    
    var body: some View {
        Button {
            isonboarding = false
        } label: {
            HStack(spacing: 8){
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }

    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
            .preferredColorScheme(.dark)
    }
}
