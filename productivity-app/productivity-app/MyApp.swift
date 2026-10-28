import SwiftUI

@main struct MyApp: App {
    @State private var counter = ContributionCounter()
    
    var body: some Scene {
        WindowGroup {
            GreetingView()
                .environment(counter)
        }
    }
}
