//
//  SettingsRowView.swift
//  FruitBook
//
//  Created by Vedat Ozlu on 19.07.2023.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var name : String
    var content : String? = nil
    var linkLabel : String? = nil
    var linkDestination : String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical,4)
            HStack{
                Text(name)
                    .foregroundColor(Color.gray)
                Spacer()
                if let content = content {
                    Text(content)
                } else if let linkLabel = linkLabel, let linkDestination = linkDestination {
                    Link(linkLabel,destination: URL(string: "https://\(linkDestination)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            } // : HStack
        } // : VStack
    }
}
// MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Vedat OZLU")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
