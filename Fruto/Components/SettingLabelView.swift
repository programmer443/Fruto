//
//  SettingLabelView.swift
//  Fruto
//
//  Created by Muhammad Ahmad on 27/09/2022.
//

import SwiftUI

struct SettingLabelView: View {
    var label: String
    var labelImage: String
    var body: some View {
        HStack{
            Text(label.uppercased())
            Spacer()
            Image(systemName: labelImage)
    }
    }
}
