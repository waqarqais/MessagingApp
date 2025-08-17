//
//  ContentView.swift
//  MessagingApp
//
//  Created by Vakr Kais on 17/08/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetailScreen = false

    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)

                Text("Hello, world!")

                Button("Click me") {
                    showDetailScreen = true
                }

                // Hidden navigation link
                NavigationLink(
                    destination: DetailScreen(),
                    isActive: $showDetailScreen
                ) {
                    EmptyView()
                }
                .hidden()
            }
            .padding()
        }
    }
}


#Preview {
    ContentView()
}
