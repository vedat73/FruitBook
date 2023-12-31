//
//  FruitHeaderView.swift
//  FruitBook
//
//  Created by Vedat Ozlu on 18.07.2023.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK: - PROPERTIES
    @State private var isAnimatingImage : Bool = false
    var fruit : Fruit
    // MARK: - BODY
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color : .black.opacity(0.15),radius: 8, x:6, y:8)
                .padding(.vertical,20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        } //: ZStack
        .frame(height: 440)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

// MARK: - PREVIEW

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
