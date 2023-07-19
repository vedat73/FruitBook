//
//  SettingsLabelView.swift
//  FruitBook
//
//  Created by Vedat Ozlu on 18.07.2023.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTIES
    var labelText : String
    var labelImage : String
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText)
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        } //: HStack
    }
}

// MARK: - PREVIEW
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "FruitBook", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
