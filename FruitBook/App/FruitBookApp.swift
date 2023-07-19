//
//  FruitBookApp.swift
//  FruitBook
//
//  Created by Vedat Ozlu on 18.07.2023.
//

import SwiftUI

@main
struct FruitBookApp: App {
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
                
            } else {
                ContentView()
            }
        }
    }
}
