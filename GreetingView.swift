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
    @State private var counter = ContributionCounter()
    
    var body: some View {
        VStack(spacing:20) {
            Text("Good morning")
                .font(.largeTitle.bold())
            
            Text("Contributions logged: \(counter.totalCount)")
            
            Button("Add one") {
                counter.increment()
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    GreetingView()
}
