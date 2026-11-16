// xcode: set sdk=iOS

//
//  GreetingView.swift
//  Files.xcfilescontainer
//
//  Created by csuftitan on 10/27/26.
//

import SwiftUI

struct GreetingView: View {
    @State private var showHome = false
    
    var body: some View {
        NavigationStack{
            VStack(spacing:20) {
                Text("Good morning!")
                    .font(.largeTitle.bold())
                
                Button("Let's see what's on the agenda today") {
                    showHome=true
                }
                .buttonStyle(.borderedProminent)
            }
            .navigationDestination(isPresented: $showHome) {
                HomeView()
            }
        }
    }
}

#Preview {
    GreetingView()
}
