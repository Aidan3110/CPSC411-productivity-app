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
        Task(description: "Homework"),
        Task(description: "Basketball practice"),
        Task(description: "Video games")
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(tasks) { task in
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundStyle(.white)
                            .frame(width: 36, height: 36)
                            .background(.blue)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading) {
                            Text(task.description)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    AgendaView()
}

