//
//  SettingRow.swift
//  Fruto
//
//  Created by Muhammad Ahmad on 27/09/2022.
//

import SwiftUI

struct SettingRow: View {
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                        .font(.footnote)
                }
                else if (linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                }
                else{
                    EmptyView()
                }
            }
        }
    }
}

