//
//  FruitCardView.swift
//  FruitBook
//
//  Created by Vedat Ozlu on 18.07.2023.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    @State private var isAnimating : Bool = false
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                //FRUIT : IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15),radius: 2,x: 6,y:8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                //FRUIT : TITLE
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15), radius: 2,x:2,y:2)
                //FRUIT : HEADLINE
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                    .frame(maxWidth: 480)
                //BUTTON: START
                StartButtonView()
            }//:VStack
        } //:ZStack
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity,alignment: .center)
        .background(LinearGradient(
            gradient: Gradient(colors: fruit.gradientColors),
            startPoint: .top,
            endPoint: .bottom
        ))
        .cornerRadius(20)
        .padding(.horizontal,12)
    }
}
// MARK: - PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
