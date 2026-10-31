//
//  HomeView.swift
//  productivity-app
//
//  Created by csuftitan on 10/28/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            AgendaView()
                .tabItem {
                    Label("Agenda", systemImage: "list.bullet")
                }
            exampleAPI()
                .tabItem {
                    Label("iTunes", systemImage: "heart.fill")
                }
            Text("History tab")
                .tabItem{
                    Label("History", systemImage: "clock")
                }
            Text("Settings tab")
                .tabItem{
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    HomeView()
}
