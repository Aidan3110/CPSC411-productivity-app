import SwiftUI

@main struct MyApp: App {
    @State private var counter = ContributionCounter()
    @AppStorage("hasSeenGreeting") private var hasSeenGreeting = false
    
    var body: some Scene {
        WindowGroup {
            Group {
                if hasSeenGreeting {
                    HomeView()
                } else {
                    GreetingView()
                }
            }
            .environment(counter)
        }
    }
}
