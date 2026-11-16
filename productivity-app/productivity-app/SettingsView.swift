// xcode: set sdk=iOS

//
//  SettingsView.swift
//  
//
//  Created by csuftitan on 11/11/26.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("appearance") private var appearance = "system"
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Appearance") {
                    Picker("Appearance", selection: $appearance) {
                        Text("System").tag("device_setting")
                        Text("Light").tag("light")
                        Text("Dark").tag("dark")
                    }
                    .pickerStyle(.segmented)
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
}
