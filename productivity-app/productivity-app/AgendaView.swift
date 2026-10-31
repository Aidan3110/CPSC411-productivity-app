//
//  AgendaView.swift
//  productivity-app
//
//  Created by csuftitan on 10/28/26.
//

import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    let description: String
}

struct AgendaView: View {
    let tasks = [
        Task(description: "Finish history notes"),
        Task(description: "Study for Calculus midterm"),
        Task(description: "Doctor's appt at 2pm")
    ]
    
    var body: some View {
        List {
            ForEach(tasks) { task in
                Text(task.description)
            }
        }
    }
}

#Preview {
    AgendaView()
}

