import SwiftUI
import SwiftData

@main struct MyApp: App {
    @AppStorage("hasSeenGreeting") private var hasSeenGreeting = false
    @AppStorage("appearance") private var appearance = "system"
    
    private var colorScheme: ColorScheme? {
        switch appearance {
        case "light": .light
        case "dark": .dark
        default: nil
        }
    }
    
    var body: some Scene {
        WindowGroup {
            Group {
                if hasSeenGreeting {
                    HomeView()
                } else {
                    GreetingView()
                }
            }
            .preferredColorScheme(colorScheme)
        }
    }
}
