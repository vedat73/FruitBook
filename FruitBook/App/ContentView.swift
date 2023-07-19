//
//  ContentView.swift
//  FruitBook
//
//  Created by Vedat Ozlu on 18.07.2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var isShowingSettings : Bool = false
    var fruits : [Fruit] = fruitsData
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical,4)
                    }
                }
            } //: ListView
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                       isShowingSettings = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    } // : Button
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
                }
            }
            .navigationTitle("Fruits")
        } //: NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
