//
//  SettingView.swift
//  Fruto
//
//  Created by Muhammad Ahmad on 23/09/2022.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("onbaording") var isonboarding: Bool = false
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    GroupBox(
                        label: SettingLabelView(label: "Fruto", labelImage: "info.circle"),
                        content: {
                            Divider().padding(.vertical, 4)
                            
                            HStack(alignment: .center, spacing: 10) {
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(9)
                                Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                                    .font(.footnote)
                            }

                    })
                    GroupBox(label: SettingLabelView(label: "Customization", labelImage: "paintbrush")) {
                        Divider().padding(.vertical, 4)
                        Toggle(isOn: $isonboarding){
                            if isonboarding{
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                                
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }

                    GroupBox(
                        label: SettingLabelView(label: "Application", labelImage: "apps.iphone"),
                        content: {
                            Divider().padding(.vertical, 4)
                            
                            SettingRow(name: "Developer", content: "Muhammad Ahmad")
                            SettingRow(name: "Compatiability", content: "iOS 14")
                            SettingRow(name: "Website", linkLabel: "LinkedIn", linkDestination: "www.linkedin.com/in/imuhammadahmad443")
                            SettingRow(name: "Version", content: "1.1.0")

                    })
                }
            }
            .navigationBarTitle("Setting", displayMode: .large)
            .navigationBarItems(trailing: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
            }))
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
