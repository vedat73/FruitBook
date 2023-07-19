//
//  OnboardingView.swift
//  FruitBook
//
//  Created by Vedat Ozlu on 18.07.2023.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    var fruits : [Fruit] = fruitsData
    // MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) {item in
                FruitCardView(fruit: item)
            } //:Loop
        } //:TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}
// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
