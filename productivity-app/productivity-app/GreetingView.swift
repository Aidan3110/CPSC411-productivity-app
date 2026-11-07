// xcode: set sdk=iOS

//
//  GreetingView.swift
//  Files.xcfilescontainer
//
//  Created by csuftitan on 10/27/26.
//

import SwiftUI

@Observable
class ContributionCounter {
    var totalCount = 0
    
    func increment() {
        totalCount += 1
    }
}

struct GreetingView: View {
    @Environment(ContributionCounter.self) private var counter
    @State private var showHome = false
    
    var body: some View {
        NavigationStack{
            VStack(spacing:20) {
                Text("Good morning!")
                    .font(.largeTitle.bold())
                
                Text("Contributions logged: \(counter.totalCount)")
                
                Button("Add one") {
                    counter.increment()
                }
                .buttonStyle(.borderedProminent)
                
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
        .environment(ContributionCounter())
}
